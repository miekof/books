#!/bin/bash
# array of ISBN

isbnArray=("9780911207026" "9780199791002" "9780800723453" "9780961444402" "9781592854868" "9781569243138" "9789945894752" "9780307278715" "9781442471818" "9781400201655" "9780553384284" "9780877792956" "9780071463386" "9781484084939" "9780764554285" "9780380810338" "9781400200955" "9780316548182"
"9781626253704" "9780446607209" "9780143130628" "9780962535307" "9781514640807" "9781570629570")
#isbnArray=("9780911207026")


# Open Library
for item in ${isbnArray[*]}
do
  curl "https://openlibrary.org/api/books?bibkeys=ISBN:$item&jscmd=data&format=json" -o "apiResponse/OpenLibrary/$item.json"
done

# Google books
for item in ${isbnArray[*]}
do
  curl "https://www.googleapis.com/books/v1/volumes?q=isbn:$item" -o "apiResponse/Google/$item.json"
done

# WorldCat
for item in ${isbnArray[*]}
do
curl "http://xisbn.worldcat.org/webservices/xid/isbn/$item?method=getMetadata&format=json&fl=*" -o "apiResponse/WorldCat/$item.json"
done

# Library of Congress
for item in ${isbnArray[*]}
do
curl "http://lx2.loc.gov:210/lcdb?version=1.1&operation=searchRetrieve&query=bath.isbn=$item&startRecord=1&maximumRecords=1&recordSchema=mods" -o "apiResponse/LibraryOfCongress/$item.xml"
done
