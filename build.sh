#!/bin/sh

# Create a package.tgz from the contents of the package folder
cd ./HelloWorldPhp/package
tar -cvzf ../package.tgz --exclude='.DS_Store' --exclude='.git' *

# Create the spk
# -prevent including the contents of ./helloworldphp in HelloWorldPhp.spk (./package.tgz contains these files)
cd ..
tar -cvf ../HelloWorldPhp.spk --exclude='package' *

# Clean up
rm ./package.tgz