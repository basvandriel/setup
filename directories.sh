#!/bin/bash

# This script will create all the needed directories 
# for developing libaries and applications on various platforms.
#
# All the directories are based around the users home directory
echo -e "📂 Creating directories... (folders that already exist won't be created)"

#---------------------------------------
# Create a directory if it doesn't exist
#---------------------------------------
create() {
    if [ ! -d ~/$1 ]
        then
        mkdir -p ~/$1
        echo -e "✔ Succesfully created the ~/$1"
    else
        echo -e "❌ ~/$folder already exists"
    fi
}

# Define the folders to be created
FOLDERS=(apps libs scrap learning archive)

# Iterate through the folders and create them
for folder in ${FOLDERS[@]}
do
    create $folder
done

echo Finished creating directories...