# SubRip word list generator

This script takes SubRip Subtitle file (.srt file) and generates sorted list
containing all words from this subtitle file.

## Usage

Just specify .srt file as a first script argument. For example:

```bash
./srtwl.sh subtitles.srt
```

If you want to use this script on youtube video subtitles, you have to convert
it to the .srt file format first, for example:

```bash
# Download some youtube video subtitles
youtube-dl --write-auto-sub --sub-lang en --skip-download -o 'video.%(ext)s' https://youtu.be/SzA2YODtgK4

# Convert them to SubRip Subtitles format
ffmpeg -loglevel quiet -i video.en.vtt video.en.srt

# Print sorted list with all words pronounced in this video
./srtwl.sh video.en.srt
```

Output:

```
...
amazingly
among
amount
an
and
android
andy
annette
another
answer
any
anymore
anything
anyway
apparently
appears
append
appended
appending
appends
...
```
