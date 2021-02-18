#!/bin/bash
cfg_cmd="/usr/bin/git --git-dir=/home/olli/.cfg/ --work-tree=/home/olli"
for extension_name in */; do
    extension_remote=($(git -C $extension_name remote -v))
    extension_remote=${extension_remote[1]}
    CMD="$cfg_cmd submodule add -f $extension_remote $extension_name"
    output="$(eval $CMD)"
    echo "$CMD"
    echo "$output"
done

