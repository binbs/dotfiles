#!/usr/bin/python3
import os

rootdir = os.getcwd()
remotes = []
for directory in os.listdir(rootdir):
    if os.path.isdir(directory):
        remotes.append(os.popen(f"git -C {directory} remote -v").read().split()[1])

with open("remotes.txt", "w") as f:
    for line in remotes:
        f.write(str(line))
        f.write("\n")
        print(line)
