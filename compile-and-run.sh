#!/bin/bash

set -e

limit=1000000
CPU=atom

echo "Begin Compiling"
gcc -mcpu=$CPU -mtune=$CPU -O3 -o cpp/prime cpp/prime.cpp
javac -d java java/prime.java 
gcj --main=prime -O3 -o java/prime java/prime.java 
gmcs csharp/prime.cs


echo "End Compiling"
echo "Run Implementations"

echo "C implementation"
time ./cpp/prime $limit
printf "\n\n"

echo "Java VM implementation"
time java -classpath java/ prime $limit
printf "\n\n"

echo "Java-to-native implementation"
time ./java/prime $limit
printf "\n\n"

echo "C#"
time mono csharp/prime.exe $limit
printf "\n\n"
