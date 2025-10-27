"""A script for combining markdown files into one txt file for import into NotebookLM"""
import os
ROOTDIR = 'Path\\To\\Folder'

with open("combine.txt","w",encoding="UTF-8") as f:
    for subdir, dirs, files in os.walk(ROOTDIR):
        for file in files:
            if file.endswith(".md"):
                with open(os.path.join(subdir, file),"r",encoding="UTF-8") as h:
                    f.write(file)
                    f.write(h.read())
                    f.write("\n\n------\n\n")
