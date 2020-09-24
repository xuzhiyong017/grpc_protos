#!/bin/bash
#set -x

OUTPUT=$(dirname $(pwd))/lib/proto

rm -rf $OUTPUT
mkdir $OUTPUT

protoc --dart_out=grpc:$OUTPUT -I=$(pwd) $(pwd)/Hello.proto