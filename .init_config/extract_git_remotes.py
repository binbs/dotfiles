#!/usr/bin/python3
import os
import argparse
import pathlib

parser = argparse.ArgumentParser()
parser.add_argument("pluginspath", help="path to vim plugins")
parser.add_argument("-c", "--clone", help="specify whether to save or clone",
                    action="store_true")
args = parser.parse_args()
pluginspath = pathlib.Path(args.pluginspath)

path_name = pathlib.PurePath(args.pluginspath).name
if args.clone:
    print("cloneing")
    with open(f"remotes_{path_name}.txt", "r") as f:
        remotes = f.readlines()
    for remote in remotes:
        if not pluginspath.exists():
            pluginspath.mkdir()

        os.popen(f"git -C {pluginspath} clone {remote}")
else:
    remotes = []
    for entry in os.scandir(args.pluginspath):
        if entry.is_dir():
            remotes.append(os.popen(f"git -C {entry.path} remote -v").read().split()[1])

    with open(f"remotes_{path_name}.txt", "w") as f:
        for line in remotes:
            f.write(str(line))
            f.write("\n")
            print(line)
