#!/bin/bash

TEMP_FILE=$(mktemp)
SUBTITLE_FILE=$1
GREP_TOOL=grep

if [ -f "/usr/bin/rg" ]; then
    GREP_TOOL=rg
fi

cat $SUBTITLE_FILE | \
    $GREP_TOOL --color=never '[A-Za-z]' | \
    tr -d '.!,?' | \
    tr '[A-Z]' '[a-z]' > $TEMP_FILE

tr ' ' '\n' < $TEMP_FILE | sort -u

rm $TEMP_FILE
