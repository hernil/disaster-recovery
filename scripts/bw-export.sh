#!/usr/bin/env bash

# fail the script as soon as an invalid password has been entered
set -e

EXPORT_NAME=bw-export-$(date "+%Y%m%d-%H%M%S")

# set BW_SESSION variable to a valid token
export BW_SESSION=$(bw unlock --raw)

# sync bitwarden to make sure we are exporting up to date data
bw sync --session $BW_SESSION

# export all entries
bw export --raw --output ./ramdisk/data/bitwarden/$EXPORT_NAME.json --format json # bw export does not seem to accept the --session parameter, so you have to enter your password here again

# per entry, check if they contain attachments and then export them
bash <(bw list items --session $BW_SESSION | jq -r '.[] | select(.attachments != null) | . as $parent | .attachments[] | "bw get attachment --session $BW_SESSION \(.id) --itemid \($parent.id) --output \"./ramdisk/data/bitwarden/attachments/\($parent.id)/\(.fileName)\""')

