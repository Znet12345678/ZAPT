#!/bin/bash
cd /scripts
for file in *.sh
do
	./$file
done
