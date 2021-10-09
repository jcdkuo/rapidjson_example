#!/bin/bash

echo -e "rapidjson_read:"
./build/bin/rapidjson_read ./json/config.json

echo -e "\n\nrapidjson_read_from_file:"
./build/bin/rapidjson_read_from_file ./json/config.json

echo -e "\n\nrapidjson_read_array:"
./build/bin/rapidjson_read_array ./json/array.json

echo -e "\n\nrapidjson_write:"
./build/bin/rapidjson_write
