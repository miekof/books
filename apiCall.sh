#!/bin/bash
# array of ISBN

isbnArray=("9780735211223" "9780385490818" "9780316316132" "9781449474256" "9781449486792" "9781564779984" "9789945894752" "9781628454963" "9781400201655")
#isbnArray=("9780735211223")


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
