#!/bin/sh

# Go to HelloWorldPhp dir, this makes things a lot easier. Otherwise the package
# and spk contain the folder 'HelloWorldPhp'.
cd ./HelloWorldPhp

# Create a package.tgz from the source files
tar -cvzf ./package.tgz --exclude='.DS_Store' --exclude='.git' ./helloworldphp

# Create the spk
# -prevent including of ./helloworldphp in HelloWorldPhp.spk (./package.tgz contains these files)
tar -cvf ../HelloWorldPhp.spk --exclude='helloworldphp' *

# Clean up
rm ./package.tgz