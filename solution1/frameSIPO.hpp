#ifndef FRAMESIPO_HPP_
#define FRAMESIPO_HPP_


void frameSIPO(stream<axiByte> &inData,
			   stream<axiByte> &outData,
			   uint1* sfd_detected,
			   uint1* src_addr,
			   uint1* dest_addr,
			   uint1* ethertype,
			   uint1* ping);



#endif //ifdef
