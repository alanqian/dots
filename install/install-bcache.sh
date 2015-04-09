back_dev=/dev/sdb1
cache_dev=/dev/sda3
mount_to_path=/home/mnt

# install bcache-tools
sudo add-apt-repository ppa:g2p/storage
sudo apt-get update
sudo apt-get install bcache-tools

# create backing dev
sudo make-bcache -B $back_dev

# create caching dev
sudo make-bcache -C $cache_dev

# wipe both devices
sudo wipefs -a $back_dev
sudo wipefs -a $cache_dev


# init script
# register bcache => /dev/bcacheX
sudo echo $back_dev > /sys/fs/bcache/register
sudo echo $cache_dev > /sys/fs/bcache/register
# Enable writeback caching
echo writeback > /sys/block/bcache0/bcache/cache_mode

# mount to
sudo mount /dev/bcache0 $mount_to_path

# check cache
tail /sys/block/bcache0/bcache/stats_total/*


