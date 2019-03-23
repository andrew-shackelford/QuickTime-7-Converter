# QuickTime 7 Converter

#### Andrew Shackelford
#### Harvard College, Class of 2020
#### ashackelford@college.harvard.edu

This is a quick and easy script that finds all videos with old (QuickTime 7 Era) codecs and converts them using ``ffmpeg``. To run, just place the script in whatever folder of videos you want to convert (it will scan all subfolders as well), and execute it. Don't forget to use `chmod` to mark it as executable, and to place it in the folder of videos you wish to convert.

Example usage:

```
cd VIDEO_FOLDER
chmod +x quicktime_7.sh
./quicktime_7.sh
``` 