# A python script for getting the names and sizes of all files in a directory
# The results are sent to a json file.   
# Usage: python fileSize.py <directory> <filetype>
import os
import sys
import json

# Get the path from the command line
# Get the filetypes to search for from the command line
path = sys.argv[1]
filetypes = sys.argv[2]

# Create an empty dictionary for the results
filename_dict = {
    "fileType": filetypes,
    "fileList": []
    } 

# Create an empty dictionary for details of each file    
file_dict = []

# Create a function to sort the files by size, descending
fun = lambda x: os.path.getsize(os.path.join(path, x))
files = os.listdir(path)
files.sort(key=fun, reverse=True)

# Loop through the files to get the file names and file sizes
# Store the results in the filename_dict.
for f in files:
    file_dict = { 
        'fileName': f, 
        'fileSize': os.path.getsize(os.path.join(path, f))
        }
    filename_dict["fileList"].append(file_dict)

# Write the filename_dict object to a file
with open('./output.json', 'w') as json_file:
  json.dump(filename_dict, json_file)