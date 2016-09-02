#include "globals.hpp"
#include "ap_utils.h"
#include "frameSIPO.hpp"

void frameSIPO(stream<axiByte> &inData,
			   stream<ethHeader> &headerData)
{
#pragma HLS INTERFACE port=inData axis
#pragma HLS INTERFACE port=headerData axis

#pragma HLS pipeline II=1 enable_flush

	static enum BYTE_COUNTER_STATE { WAIT=0, COUNT } CNT_STATE = WAIT;

	static int byte_cnt = 0;    // number of bytes rcvd since SFD
	axiByte curr_byte = {0, 0}; // current byte tdata and tuser

	static ethHeader curr_header = {0,0,0}; // holds header of current frame

	if (!inData.empty())
	{
		switch (CNT_STATE)
		{
		case WAIT:
			inData.read(curr_byte);

			// if SFD detected, go to count state
			if (curr_byte.data == 0xd5)
			{
				CNT_STATE = COUNT;
			}
			else // stay in wait state
			{
				byte_cnt = 0;
				CNT_STATE = WAIT;
			}
			break;

		case COUNT:
			inData.read(curr_byte);
			byte_cnt++;
			CNT_STATE = COUNT;

			if (byte_cnt <= 6)
			{   // bytes < 6 get stored as dest mac address
				curr_header.dest_MAC.range(47-8*(byte_cnt-1),47-8*(byte_cnt-1)-7) = curr_byte.data;
			}
			else if (byte_cnt <= 12)
			{   // 6 < bytes < 12 get stored as dest mac address
				curr_header.src_MAC.range(47-8*(byte_cnt-7),47-8*(byte_cnt-7)-7) = curr_byte.data;
			}
			else if (byte_cnt == 13)
			{   // byte 13 stored as ethertype msByte
				curr_header.ethertype.range(15, 8) = curr_byte.data;
			}
			else if (byte_cnt == 14)
			{   // byte 14 stored as ethertype lsByte
				curr_header.ethertype.range(7,0) = curr_byte.data;
				headerData.write(curr_header);
			}
			else
			{
				CNT_STATE = WAIT;
			}
			/*
			printf("\n\ndest: %02X:%02X:%02X:%02X:%02X:%02X src: %02X:%02X:%02X:%02X:%02X:%02X, type: %02X:%02X\n\n",
					curr_header.dest_MAC.range(47,40).to_uint(), curr_header.dest_MAC.range(39,32).to_uint(), curr_header.dest_MAC.range(31,24).to_uint(),
					curr_header.dest_MAC.range(23,16).to_uint(), curr_header.dest_MAC.range(15,8).to_uint(),  curr_header.dest_MAC.range(7,0).to_uint(),
					curr_header.src_MAC.range(47,40).to_uint(),  curr_header.src_MAC.range(39,32).to_uint(),  curr_header.src_MAC.range(31,24).to_uint(),
					curr_header.src_MAC.range(23,16).to_uint(),  curr_header.src_MAC.range(15,8).to_uint(),   curr_header.src_MAC.range(7,0).to_uint(),
					(uint8_t)curr_header.ethertype.range(15,8), (uint8_t)curr_header.ethertype.range(7,0));
			*/
			break;
		}

	}


}
