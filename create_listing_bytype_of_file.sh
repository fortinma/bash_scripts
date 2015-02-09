#!/bin/bash
ls -R > lists.txt
#list all files in a directory and subdirectories and list them
#in a file called list.txt

for file in lists.txt; do grep "tif" $file -i > lists2.txt; done

#in this case I am looking for tif files
#search the list for TIF or tif and put the results in file list2.txt -i
#allows the search to be case insensitive

for file in lists2.txt; do grep "tif." $file -iv > lists3.txt; done

#search for all files that are not simply .tif files, so antying that has .tif.xml or other and omit them with the -v

cp lists3.txt /data/1/www/html/data/ssvlist.txt
#this last line copies the file lists3.txt to the web server as file ssvlist.txt, which is read by the
#metadata record in the inventory