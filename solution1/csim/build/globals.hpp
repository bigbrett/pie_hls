#ifndef GLOBALS_HPP_
#define GLOBALS_HPP_

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>
#include <math.h>
#include <stdint.h>
#include <cstdlib>

#include <hls_stream.h>
#include <ap_int.h>
#include "ap_cint.h"


using namespace hls;
using namespace std;


struct axiWord
{
   ap_uint<64>  data;
   ap_uint<8>   strb;
   ap_uint<128> user;
   ap_uint<1>   last;
};

struct axiByte
{
	   ap_uint<8>  data;
	   ap_uint<2> user;
};

struct ethHeader
{
	ap_uint<48> src_MAC;
	ap_uint<48> dest_MAC;
	ap_uint<16> ethertype;
};

#endif // GLOBALS_H_ not defined

