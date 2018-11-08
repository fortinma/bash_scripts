#!/bin/bash
for file in *.JPG OR *.JPEG; do gdalinfo -json $file; done
