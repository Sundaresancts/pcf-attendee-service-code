#!/bin/bash

set -ex

apt-get update && apt-get install -y curl

pushd attendee-service-source
  echo "Fetching Dependencies"
  ./mvnw clean compile > /dev/null

  echo "Running Tests"
  ./mvnw test
popd

exit 0