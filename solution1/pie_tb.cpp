#include "globals.hpp"
#include <stdlib.h>
#include "frameSIPO.hpp"

using namespace hls;
using namespace std;

//void printBits(size_t const size, void const * const ptr)
//{
//    unsigned char *b = (unsigned char*) ptr;
//    unsigned char byte;
//    int i, j;
//
//    for (i=size-1;i>=0;i--)
//    {
//        for (j=7;j>=0;j--)
//        {
//            byte = (b[i] >> j) & 1;
//            printf("%u", byte);
//        }
//    }
//    puts("");
//}

int main()
{
	int returnval = 0;

	axiByte inData = {0, 0};
	axiByte outData;
	stream<axiByte>	inDataFIFO("inDataFIFO");
	stream<axiByte>	outDataFIFO("outDataFIFO");

	uint8_t header_data = 0;
//	uint8_t* hp = &header_data;
//	unsigned int livewire = 0;
	uint1 livewire = 0;

	//extern static ap_uint<16> packet_length;

	// TB Files
	ifstream inputFile, outputFile;
	cerr << "Attempting to open files... " << endl;
	inputFile.open("/home/brett/Desktop/myfile.dat");
	if (!inputFile)	{
		cerr << " Error opening input file!" << endl;
		return -1;
	}
	outputFile.open("/home/brett/Desktop/outData.txt");
	if (!outputFile) {
		cerr << " Error opening output file!" << endl;
		return -1;
	}

	// Execute (DUT) Function
	uint8_t dataTemp;
	int count = 0;
	int errCount = 0;
	cerr << "Running DUT " << endl << endl;
	while (inputFile >> hex >> dataTemp )
	{
		inData.data = dataTemp;
		printf("byte %d = 0x%x\n", count, dataTemp);
		inDataFIFO.write(inData);
		count++;
	}
	for (int i = 0; i < count + 30; i++)
	{
		frameSIPO(inDataFIFO, &header_data, &livewire);
		printf("byte(%04d)  %X:  [%d], %d\n", i, header_data,livewire, packet_length.to_int());
	}

	// Write the output results to a file
	//...

	// Check the results
//	returnval = system("diff --brief -w output.dat output.golden.dat");
//	if (returnval != 0)
//	{
//		printf("Test failed !!!\n");
//		returnval = 1;
//	}
//	else
//		printf("Test passed !\n");


		return returnval;
}
