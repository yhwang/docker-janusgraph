#!/bin/bash

variant="$1"

# Make sure the base is already there
version=$(grep "janusgraph" version | sed -E 's/janusgraph\s*//')
docker build -t janusgraph --build-arg COMMIT="$version" janusgraph

if [ "$variant" != "" ]; then
  docker build -t "$variant" "$variant"
fi
