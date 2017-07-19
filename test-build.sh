#!/bin/bash

variant="$1"

version=$(grep "$variant" version | sed -E 's/'"$variant"'\s*//')
docker build -t yihongwang/"$variant" --build-arg COMMIT="$version" "$variant"
