# 1.使用Ext4 without journaling文件系统

# close ext4 journal
tune2fs -O ^has_journal /dev/sda1

# let linux to check disk
e2fsck -f /dev/sda1

reboot NOW

dmesg | grep EXT4
# EXT4-fs (sda1): mounted filesystem without journal
# mounted filesystem with ordered data mode

# 2.开启TRIM功能

# check whether ssd can support TRIM
# * Data Set Management TRIM supported
hdparm -I /dev/sda


# edit /etc/fstab
# trim => discard
# noatime,nodiratime
# /dev/sda1 / ext4 defaults 改为：
#
# /dev/sda1 / ext4 noatime,nodiratime,discard,defaults 分区、挂载点、已经存在的选项不一定一样。
# tmpfs /tmp tmpfs defaults,noatime,mode=1777 0 0

# test mount
# /dev/sda1 on / type ext4 (rw,discard)
mount -oremount /dev/sda1

# edit /etc/rc.local
#for d in sda sdb sdc; do
#  f="/sys/block/$d/queue/rotational"
#  if [ -f $f ] && [ $(cat $f) == '0' ]; then
#    # this is ssd, using noop scheduler
#    echo noop > /sys/block/$d/queue/scheduler
#  fi
#done
#exit 0

# http://bernaerts.dyndns.org/linux/74-ubuntu/250-ubuntu-tweaks-ssd

fstrim -v /
fstrim -v /home
