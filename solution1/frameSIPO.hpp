#ifndef FRAMESIPO_HPP_
#define FRAMESIPO_HPP_


void frameSIPO(stream<axiByte> &inData,
			   uint8_t* header,
			   uint1* livewire);

static ap_uint<16> packet_length;

#endif //ifdef
