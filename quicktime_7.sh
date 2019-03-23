#!/usr/bin/env bash

find . -type f \( -iname \*.webm -o -iname \*.flv -o -iname \*.vob -o -iname \*.ogg -o -iname \*.ogv -o -iname \*.drc -o -iname \*.gifv -o -iname \*.mng -o -iname \*.avi -o -iname \*.mov -o -iname \*.qt -o -iname \*.wmv -o -iname \*.yuv -o -iname \*.rm -o -iname \*.rmvb -o -iname \*.asf -o -iname \*.amv -o -iname \*.mp4 -o -iname \*.m4v -o -iname \*.mp4 -o -iname \*.svi -o -iname \*.3gp -o -iname \*.f4v \) -print0 | while read -d $'\0' file
do
    if mdls -name kMDItemCodecs "$file" | grep -iq '3ivx\|VP9\|DnXHD\|DNxHR\|Meridien\|SheerVideo\|CineForm\|Cinepak\|DivX\|Flash\|FLC\|H.261\|JPEG 2000\|Microsoft Video 1\|Motion JPEG A\|Motion JPEG B\|Perian\|RealVideo\|REDCODE\|SGI\|SStP\|Sorenson 3\|Sorenson Spark\|Sorenson Video\|Streambox ACT-L2\|Windows Media Video\|Theora Video\|ZyGoVideo';
    then
        echo "Converting $file";
        echo $file;
        ffmpeg -v 24 -stats -i "$file" -vcodec libx264 -acodec aac "${file}.mp4" </dev/null;
    else
        echo "Not converting $file";
    fi
done
