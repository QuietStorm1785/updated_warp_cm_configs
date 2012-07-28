#!/system/bin/sh
/system/bin/fixebr $1
case "$?" in
   1) echo "need to reboot the phone"
   /system/bin/reboot	
   ;;
   
   0) echo "nothing to do..."
   ;;
esac

# 1 means ebr has been fixed 
# and need to reboot the machine...
#
