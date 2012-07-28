#!/system/bin/sh
/system/bin/vfat_valid $1
case "$?" in
   1) echo "need to format"
   /system/bin/newfs_msdos -F 32 -O android -L $2 $1 	
   ;;
   
   0) echo "nothing to do..."
   ;;
esac

# 1: not valid FAT16/32 fs, need to format 
# 0: fs is fine
# others: vfat_valid usage error
