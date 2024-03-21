#!/bin/bash

# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Append to daily note
# @raycast.mode silent
#
# Optional parameters:
# @raycast.icon ./images/obsidian.png
# @raycast.argument1 { "type": "text", "placeholder": "Note", "optional": false}
# @raycast.packageName Obsidian Missing Commands
#
# Documentation:
# @raycast.description Append a quick note to the daily journal
# @raycast.author Julien Chiron
# @raycast.authorURL https://github.com/julienchiron

# The full path to the Obsidian Vault
#VAULT="work"
VAULT=$HOME"/Library/Mobile Documents/com~apple~CloudDocs/Obsidian"

# The folder that contains the journal files
JOURNAL="Journal"

# Journal naming format according to the Obsidian setup
JOURNAL_NAME_FORMAT="+%A %d-%m-%Y"

# Test if VAULT exists
if [ ! -d "$VAULT" ]; then
    echo "Vault dosen't exist"
    exit 1
fi

# Test if JOURNAL exists or create it
if [ ! -d "$VAULT/$JOURNAL" ]; then
    mkdir $VAULT/$JOURNAL
fi

# Test if current daily note exists or create it
filename=$(date "$JOURNAL_NAME_FORMAT").md

if [ ! -f "$VAULT/$JOURNAL/$filename" ]; then
    touch "$VAULT/$JOURNAL/$filename"
fi

# Append input note to the end of the journal note ${1}
echo ${1} >> "$VAULT/$JOURNAL/$filename"

echo "Note added to Obsidian"

# TODO
# test date function for error
