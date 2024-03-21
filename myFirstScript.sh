#!/bin/bash

# Raycast Script Command Template
#
# Duplicate this file and remove ".template." from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title My First Script
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Note", "optional": false, "percentEncoded": true}
# @raycast.packageName Obsidian Missing Commands
#
# Documentation:
# @raycast.description Create a new note and add it to the end of the daily journal
# @raycast.author Julien Chiron
# @raycast.authorURL https://github.com/julienchiron

# The full path to the Obsidian Vault
VAULT_PATH=""

# The folder that contains the journal files
JOURNAL_FOLDER
