#include <stdio.h>
#include "rapidjson/document.h"

using namespace rapidjson;

static void json_object_print(const char *szKey, const Value& tValue);
static void json_object_array_print(const Value& tValue);

static void json_object_print(const char *szKey, const Value& tValue)
{
	if ((szKey == NULL) || (tValue == NULL))
	{
		return;
	}

	printf("%s: ", szKey);

	switch (tValue.GetType())
	{
		case kNullType:
			printf("null\n");
			break;
		case kFalseType:
			printf("boolean = false\n");
			break;
		case kTrueType:
			printf("boolean = true\n");
			break;
		case kNumberType:
			if (tValue.IsDouble() == true)
			{
				printf("double = %f\n", tValue.GetDouble());
			}
			else if (tValue.IsInt() == true)
			{
				printf("int = %d, ", tValue.GetInt());
				printf("int64 = %ld\n", tValue.GetInt64());
			}
			break;
		case kObjectType:
			printf("object\n");
			break;
		case kArrayType:
			printf("array\n");
			json_object_array_print(tValue);
			break;
		case kStringType:
			printf("string = \"%s\", length: %d\n", tValue.GetString(), tValue.GetStringLength());
			break;
		default:
			break;
	}
}

static void json_object_array_print(const Value& tValue)
{
	int Iidx, iLen;
	char acKey[64];

	if (tValue == NULL)
	{
		return;
	}

	iLen = tValue.Size();

	printf("iLen: %d\n", iLen);

	for (Iidx = 0; Iidx < iLen; Iidx++)
	{
		snprintf(acKey, sizeof(acKey), "[%d]", Iidx);
		json_object_print(acKey, tValue[Iidx]);
	}
}

int main(int argc, char *argv[])
{
	FILE *fp = NULL;
	char acBuffer[4096];
	Document tDoc;

	if (argc < 2)
	{
		printf("Usage: %s file1.json ...\n", argv[0]);
		return 0;
	}

	fp = fopen(argv[1], "rb");
	if (fp != NULL)
	{
		fread(acBuffer, sizeof(acBuffer), 1, fp);
		fclose(fp);
	}
	else
	{
		printf("unable to parse contents of %s\n", argv[1]);
		return -1;
	}

	tDoc.Parse(acBuffer);
	
	if ((tDoc.IsObject() == true) || (tDoc.IsArray() == true))
	{
		if (tDoc.HasMember("ptz") != true)
		{
			printf("\"ptz\" not found\n");
		}
		const Value& ptz = tDoc["ptz"];

		if (ptz.HasMember("c0") != true)
		{
			printf("\"c0\" not found\n");
		}
		const Value& ptz_c0 = ptz["c0"];

		if (ptz_c0.HasMember("type") != true)
		{
			printf("\"type\" not found\n");
		}
		const Value& ptz_c0_type = ptz_c0["type"];

		if (tDoc.HasMember("deviceinfo") != true)
		{
			printf("\"deviceinfo\" not found\n");
		}
		const Value& deviceinfo = tDoc["deviceinfo"];

		if (deviceinfo.HasMember("manufacturer") != true)
		{
			printf("\"manufacturer\" not found\n");
		}
		const Value& deviceinfo_manufacturer = deviceinfo["manufacturer"];

		if (deviceinfo.HasMember("hardwareid") != true)
		{
			printf("\"hardwareid\" not found\n");
		}
		const Value& deviceinfo_hardwareid = deviceinfo["hardwareid"];

		if (tDoc.HasMember("array") != true)
		{
			printf("\"array\" not found\n");
		}
		const Value& array = tDoc["array"];

		json_object_print("ptz", ptz);
		json_object_print("c0", ptz_c0);
		json_object_print("type", ptz_c0_type);
		json_object_print("deviceinfo", deviceinfo);
		json_object_print("manufacturer", deviceinfo_manufacturer);
		json_object_print("hardwareid", deviceinfo_hardwareid);
		json_object_print("array", array);
	}
	else
	{
		printf("unable to parse contents of %s\n", argv[1]);
		return -1;
	}
	
	return 0;
}
