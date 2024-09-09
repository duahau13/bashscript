#!/bin/bash

for file in logfiles/*.log
do
    tar -czvf $file.tar.gz $file
    sleep 1
done
