import os
rootdir = 'Path\\To\\Folder'

with open("combine.txt","w",encoding="UTF-8") as f:
    for subdir, dirs, files in os.walk(rootdir):
        for file in files:
            if file.endswith(".md"):
                with open(os.path.join(subdir, file),"r",encoding="UTF-8") as h:
                    f.write(file)
                    f.write(h.read())
                    f.write("\n\n------\n\n")
