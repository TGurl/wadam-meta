#!/usr/bin/env bash

echo "* Deleting the work folder if one exists"
[ -d work ] && sudo rm -rf work

echo "* Deleting the out folder if one exists"
[ -d out ] && sudo rm -rf out

# checking if we have the latest files from github
#echo "* Checking for newer files online first"
#git pull

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "* Write your commit comment: "
read input

git commit -m "$input"

# Push the local files to github
#git push -u origin master
git push
