#/bin/bash
# rmplaying.sh
# only works when exactly 1 instance of mplayer is running
playing() {
    PID=`pidof mplayer`
    WHICH=`which mplayer`
    if [ $PID ]; then
        lsof -p $PID | awk '{ if ($5=="REG" && $4!="mem" && $9)print $0 }' | grep -v "$WHICH" | grep -oP '\/.*'
    fi
}

FILE="$(playing)"
echo "file: $FILE"
if [ "$FILE" ]; then
  rm "$FILE" && echo "Removed '$FILE'"
fi
