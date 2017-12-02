#!/bin/bash

set -ex

if [ -z $MOVIE_FUN_URL ]; then
  echo "MOVIE_FUN_URL not set"
  exit 1
fi
apt-get update && apt-get install -y curl
pushd movie-fun
  echo "Running smoke tests for movie fun deployed at $MOVIE_FUN_URL"
  smoke-tests/bin/test $MOVIE_FUN_URL
popd

exit 0
