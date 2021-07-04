#!/bin/bash

set -e

if [[ -z ${1} ]]; then
    echo -e "\n\tUsage: ${0} </path/to/video.mkv>\n"
    exit 1
fi

ffprobe -v quiet -i ${1} -print_format json -show_format -show_streams -show_chapters
