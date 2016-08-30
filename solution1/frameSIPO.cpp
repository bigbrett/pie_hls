#include "globals.hpp"
#include "ap_utils.h"
#include "frameSIPO.hpp"

void frameSIPO(stream<axiByte> &inData,
			   stream<axiByte> &outData,
			   uint1* sfd_detected,
			   uint1* src_addr,
			   uint1* dest_addr,
			   uint1* ethertype,
			   uint1* ping)
{
#pragma HLS INTERFACE port=inData axis
#pragma HLS INTERFACE port=outData axis
#pragma HLS pipeline II=1 enable_flush

	static enum BYTE_COUNTER_STATE { WAIT=0, COUNT } CNT_STATE = WAIT;

	static int byte_cnt = 0;
	axiByte curr_byte = {0, 0};
	static uint16 packet_type = 0;

	if (!inData.empty())
	{
		//inData.read(curr_byte);
		//outData.write(curr_byte);
		packet_type = 0;
		switch (CNT_STATE)
		{
		case WAIT:
			inData.read(curr_byte);

			byte_cnt = 0;
			*sfd_detected = 0;
			*src_addr = 0;
			*dest_addr = 0;
			*ethertype = 0;
			if (curr_byte.data == 0xd5)
			{
			    *sfd_detected = 1;
				CNT_STATE = COUNT;
			}
			else
				CNT_STATE = WAIT;

			break;

		case COUNT:
			inData.read(curr_byte);
			byte_cnt++;
			if (byte_cnt <= 6)
				*dest_addr = 1;
			else if (byte_cnt <= 12)
				*src_addr = 1;
			else if (byte_cnt == 13)
			{
				*ethertype = 1;
				packet_type = ((uint16)curr_byte.data) << 8;
			}
			else if (byte_cnt == 14)
			{
				*ethertype = 1;
				packet_type |= ((uint16)curr_byte.data);
			}
			else
			{
				*sfd_detected = 0;
				*src_addr = 0;
				*dest_addr = 0;
				*ethertype = 0;
				CNT_STATE = WAIT;
			}
			break;
		}
		if (packet_type == 0x0800)
			*ping = 1;
		else
			*ping = 0;
	}







}
