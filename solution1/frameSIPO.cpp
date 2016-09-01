#include "globals.hpp"
#include "ap_utils.h"
#include "frameSIPO.hpp"

void frameSIPO(stream<axiByte> &inData,
			   uint8_t* header,
			   uint1* livewire)
{
#pragma HLS INTERFACE port=inData axis
#pragma HLS pipeline II=1 enable_flush

	static enum BYTE_COUNTER_STATE { WAIT=0, COUNT } CNT_STATE = WAIT;

	static int byte_cnt = 0;
	axiByte curr_byte = {0, 0};

//	static ap_uint<48> src_mac_addr = 0;
//	static ap_uint<48> dest_mac_addr = 0;
//	static ap_uint<16> packet_type = 0;
	static ap_uint<16> packet_length = 0;

	bool sfd_detected = 0;

	if (!inData.empty())
	{
		switch (CNT_STATE)
		{
		case WAIT:
			inData.read(curr_byte);
			*livewire = 0;

			if (curr_byte.data == 0xd5)
			{
			    *header = 0b10000000;
				CNT_STATE = COUNT;
			}
			else
			{
				byte_cnt = 0;
				CNT_STATE = WAIT;
			}
			break;

		case COUNT:
			inData.read(curr_byte);
			byte_cnt++;
			*livewire = 1;

			if (byte_cnt <= 6)
			{
				*header = 0b01000000;
				CNT_STATE = COUNT;
			}
			else if (byte_cnt <= 12)
			{
				*header = 0b00100000;
				CNT_STATE = COUNT;
			}
			else if (byte_cnt == 13)
			{
				*header = 0b00010000;
//				packet_type.range(15,8) = curr_byte.data;
				CNT_STATE = COUNT;
			}
			else if (byte_cnt == 14)
			{
				*header = 0b00001000;
//				packet_type.range(7,0) = curr_byte.data;
				CNT_STATE = COUNT;
			}
			else if (byte_cnt < 17)
				*header = 0b00000100;
			else if (byte_cnt == 17)
			{
				*header = 0xFF;
				packet_length.range(15,8) = curr_byte.data;
				CNT_STATE = COUNT;
			}
			else if (byte_cnt == 18)
			{
				*header = 0xFF;
				packet_length.range(7,0) = curr_byte.data;
				CNT_STATE = COUNT;
			}
			else if (byte_cnt < 64)
			{
				*header = 0b00000010;
				CNT_STATE = COUNT;
			}
			else
			{
				*header = 0x1;
				CNT_STATE = WAIT;
			}
			break;
		}

	}


}
