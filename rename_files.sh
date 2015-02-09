#!/bin/bash
#for all files in a directory “*” change the beginning of the name to for example “ReadLake”
for files in *; do mv $files "ReadLake"$files; done