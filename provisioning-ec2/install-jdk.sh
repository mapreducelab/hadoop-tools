#!/bin/bash

set -e

if [ $# -ne 0 ]; then
  echo "Usage: ./install-jdk.sh"
  exit -1
fi

# Try to install software using yum.
echo "Installing java-devel..."
sudo yum -y install java-devel
echo "Installing java-devel done"

echo "Installed java version is...."
java -version
javac -version
