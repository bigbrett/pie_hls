#include "globals.hpp"
#include <stdlib.h>
#include "frameSIPO.hpp"

using namespace hls;
using namespace std;


int main()
{
	int returnval = 0;

	axiByte inData = {0, 0};
	ethHeader outData = {0,0};
	stream<axiByte>	inDataFIFO("inDataFIFO");
	stream<ethHeader> header_data("header_data");

	// TB Files
	ifstream inputFile;
	ofstream outputFile;
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

	// Execute (DUT) Function with input from file
	uint8_t dataTemp;
	int count = 0;
	int errCount = 0;
	cerr << "Running DUT " << endl << endl;
	while (inputFile >> hex >> dataTemp )
	{
		inData.data = dataTemp;
		inDataFIFO.write(inData);
		count++;
	}
	cout << endl << endl;
	for (int i = 0; i < count + 30; i++)
		frameSIPO(inDataFIFO, header_data);

	// Write the output results to a file
	while (!header_data.empty())
	{
		header_data.read(outData);
		outputFile << hex <<
			 outData.dest_MAC.range(47,40).to_uint () << ":" << outData.dest_MAC.range(39,32).to_uint () << ":" << outData.dest_MAC.range(31,24).to_uint() << ":" <<
			 outData.dest_MAC.range(23,16).to_uint() << ":" << outData.dest_MAC.range(15,8).to_uint() << ":" <<  outData.dest_MAC.range(7,0).to_uint() << "_" <<
			 outData.src_MAC.range(47,40).to_uint() << ":" <<  outData.src_MAC.range(39,32).to_uint() << ":" <<  outData.src_MAC.range(31,24).to_uint() << ":" <<
			 outData.src_MAC.range(23,16).to_uint() << ":" <<  outData.src_MAC.range(15,8).to_uint() << ":" <<   outData.src_MAC.range(7,0).to_uint() << "_" <<
			 outData.ethertype.range(15,8).to_uint() << ":" << outData.ethertype.range(7,0).to_uint() << endl;
	}

	// Check the results
	returnval = system("diff --brief -w outData.txt golden.dat");
	if (returnval != 0)
	{
		printf("Test failed !!!\n");
		returnval = 1;
	}
	else
		printf("Test passed !\n");


		return returnval;
}
