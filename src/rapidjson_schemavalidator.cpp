#include <iostream>
#include "rapidjson/document.h"
#include "rapidjson/filereadstream.h"
#include "rapidjson/schema.h"

using namespace rapidjson;

int main(int argc, char *argv[])
{
	FILE *fp = NULL;
	char acSchemaBuffer[4096];
	Document tSchemaDoc;

	if (argc != 3)
	{
		printf("Usage: %s file.json file.schema.json\n", argv[0]);
		return 0;
	}

	fp = fopen(argv[2], "rb");
	if (fp == NULL)
	{
		printf("unable to parse contents of %s\n", argv[1]);
		return -1;
	}

	FileReadStream tSchemaRead(fp, acSchemaBuffer, sizeof(acSchemaBuffer));

	tSchemaDoc.ParseStream(tSchemaRead);
	fclose(fp);

	SchemaDocument tSchema(tSchemaDoc);
	SchemaValidator tValidator(tSchema);

	
	char acDocBuffer[4096];
	Document tDoc;

	fp = fopen(argv[1], "rb");
	if (fp == NULL)
	{
		printf("unable to parse contents of %s\n", argv[1]);
		return -1;
	}

	FileReadStream tDocRead(fp, acDocBuffer, sizeof(acDocBuffer));

	tDoc.ParseStream(tDocRead);
	fclose(fp);
	
	if (tDoc.Accept(tValidator) == true)
	{
		std::cout << "Valid JSON" << std::endl;
	}
	else
	{
		std::cout << "Invalid JSON" << std::endl;
	}

	return 0;
}
