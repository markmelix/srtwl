#!/bin/bash

TEMP_FILE=$(mktemp)
SUBTITLE_FILE=$1
GREP_TOOL=grep
DELETE_PATTERN='.!,?'

if [ -f "/usr/bin/rg" ]; then
    GREP_TOOL=rg
fi

cat $SUBTITLE_FILE | \
    tr -d $DELETE_PATTERN | \
    tr '[A-Z]' '[a-z]' | \
    $GREP_TOOL --color=never '[A-Za-z]' > $TEMP_FILE

tr ' ' '\n' < $TEMP_FILE | sort -u

rm $TEMP_FILE
