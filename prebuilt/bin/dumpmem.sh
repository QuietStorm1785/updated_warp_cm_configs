#!/system/bin/sh
ls /data/local/logs/logcat/meminfo.txt
case "$?" in
    1) echo "dumpmem"
    /system/bin/dumpstate>/data/local/logs/logcat/meminfo.txt
    ;;
esac
