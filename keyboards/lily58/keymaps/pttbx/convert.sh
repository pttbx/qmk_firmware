#!/usr/bin/env bash

# convert qmk configurator json into qmk code for compilation
#
ls -Art ~/Downloads/ | tail -n 1 | grep pttbx | xargs -I _ cp ~/Downloads/_ ./pttbx.json
qmk json2c -o qmk_json_keymap.c pttbx.json

echo "Now manually shift code from qmk_json_keymap.c into keymap.c!!!"
