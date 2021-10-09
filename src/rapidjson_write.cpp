#include <stdio.h>

#include "rapidjson/stringbuffer.h"
#include "rapidjson/writer.h"
#include "rapidjson/prettywriter.h"

#define OUTPUT_STRING_PRETTY

using namespace rapidjson;

int main(int argc, char *argv[])
{
	StringBuffer tStrBuffer;
#ifdef OUTPUT_STRING_PRETTY
	PrettyWriter<StringBuffer> tWriter(tStrBuffer);
#else
	Writer<StringBuffer> tWriter(tStrBuffer);
#endif

	tWriter.StartObject();
	tWriter.Key("str0");
	tWriter.String("abc");
	tWriter.Key("int0");
	tWriter.Int(10);
	tWriter.Key("double0");
	tWriter.Double(10.5);
	tWriter.Key("bool0");
	tWriter.Bool(false);
	tWriter.Key("null0");
	tWriter.Null();

	tWriter.Key("array");
	tWriter.StartArray();
	tWriter.Uint(1);
	tWriter.Uint(2);
	tWriter.Uint(3);
	tWriter.Uint(4);
	tWriter.Uint(5);
	tWriter.Uint(6);
	tWriter.Uint(7);
	tWriter.EndArray();

	tWriter.Key("ptz");
	tWriter.StartObject();
	tWriter.Key("c0");
	tWriter.StartObject();
	tWriter.Key("type");
	tWriter.String("3");
	tWriter.EndObject();
	tWriter.EndObject();

	tWriter.Key("object_deviceinfo");
	tWriter.StartObject();
	tWriter.Key("manufacturer");
	tWriter.String("VIVOTEK");
	tWriter.Key("hardwareid");
	tWriter.String("1.2a");
	tWriter.EndObject();

	tWriter.EndObject();

	printf("%s\n", tStrBuffer.GetString());
}
