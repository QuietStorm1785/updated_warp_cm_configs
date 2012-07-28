#!/system/bin/sh
/system/bin/e2fsck -p $2
case "$?" in
   2) echo "need to reboot the phone"
   /system/bin/reboot	
   ;;
   
   8) echo "need to format the partition..."
   /system/bin/mke2fs -T ext4 -j -m 0 -b 4096 -L $1 $2
#   /system/bin/tune2fs -j $1
   /system/bin/tune2fs -C 1 $2
   ;;
esac

# EXIT CODE for e2fsck: 
#     The exit code returned by e2fsck is the sum of the following conditions:
#       0    - No errors
#       1    - File system errors corrected
#       2    - File system errors corrected, system should be rebooted
#       4    - File system errors left uncorrected
#       8    - Operational error
#       16   - Usage or syntax error
#       32   - E2fsck canceled by user request
#       128  - Shared library error
