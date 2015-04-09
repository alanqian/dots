########################################################################
# install restricted, need confirm...
sudo apt-get -y install ubuntu-restricted-extras

# Install mailutils: need confirm
sudo apt-get -y install mailutils

# install aptitude synaptic
sudo apt-get -y install aptitude synaptic

########################################################################
# install language pack and ime
# install language packs
sudo apt-get -y install language-pack-zh-hans language-pack-gnome-zh-hans language-pack-gnome-zh-hans-base language-pack-zh-hant language-pack-gnome-zh-hant language-pack-gnome-zh-hant-base

# install ime
#sudo apt-get -y install ibus-pinyin
#sudo apt-add-repository ppa:mengzhuo1203/ibus-gjs
#sudo apt-get update
#sudo apt-get install ibus-gjs
sudo apt-get -y install ibus-sunpinyin

########################################################################
# install font,imp,mail and other tools
sudo apt-get -y install fontforge gnome-specimen
# install gimp
sudo apt-get -y install imagemagick gimp graphviz gnuplot
# install dia
sudo apt-get -y install dia-gnome dia-common dia-libs
# install pdfedit, pdftk
sudo apt-get -y install pdfedit pdftk

sudo apt-get -y install antiword unoconv aspell
sudo apt-get -y install rar unrar p7zip

########################################################################
# office tools

# install planner acroread, & chinese plugins
sudo apt-get -y install planner
sudo apt-get -y install gtg rednotebook calibre chmsee

# Install stardict
sudo apt-get -y install stardict
# patch stardict: remove tts engine which does not work!
sudo rm /usr/lib/stardict/plugins/stardict_festival.so

# libreoffice langpack
sudo apt-get -y install libreoffice-l10n-zh-cn libreoffice-l10n-zh-tw

########################################################################
# network tools

# Install www browsers
sudo apt-get -y install lynx
sudo apt-get -y install chromium-browser
sudo apt-get -y install epiphany-browser epiphany-extensions

# Install mail, bt utilities
sudo apt-get -y remove evolution
sudo apt-get -y install thunderbird thunderbird-locale-en-us thunderbird-locale-zh-cn xul-ext-lightning
sudo apt-get -y install amule amule-common amule-utils transmission-gtk transmission-common

sudo apt-get -y install openvpn

# ssh/curl
sudo apt-get -y install ssh
sudo apt-get -y install curl

########################################################################
# system tools

# Install startup manager
sudo apt-get -y install startupmanager
# Install bootup manager
sudo apt-get -y install bum

# Install isomaster, gparted
sudo apt-get -y install isomaster
sudo apt-get -y install gparted

# Install virtual box
sudo apt-get -y install virtualbox
sudo usermod -a -G vboxusers $USER

# psensor
sudo apt-get -y install hddtemp lm-sensors psensor

# install lunar calendar applet
# sudo apt-get -y install lunar-applet
# mkdir ~/.config/liblunar
# wget http://lunar-applet.googlecode.com/files/holiday.dat -O ~/.config/liblunar/holiday.dat
# sudo cp /usr/share/locale/zh_CN/LC_MESSAGES/liblunar.mo /usr/share/locale/en/LC_MESSAGES/

sudo apt-get -y install indicator-weather
sudo apt-get -y install alarm-clock-applet

# Install ubuntu tweak
#sudo add-apt-repository ppa:tualatrix/ppa
#sudo apt-get update
sudo apt-get -y install ubuntu-tweak
sudo apt-get -y install compizconfig-settings-manager
sudo apt-get -y install gconf-editor

sudo apt-get -y install gnome-tweak-tool unity-tweak-tool
sudo apt-get -y install dconf-tools

########################################################################
# development tools

# install vim
sudo apt-get -y remove vim-tiny
sudo apt-get -y install vim vim-gnome cscope
# install clewn
# sudo apt-get -y install libreadline5-dev
# install vimgdb
# 安装编译工具
# sudo apt-get -y install build-essential
# 安装编译vim－gtk的依赖包
# sudo apt-get build-dep vim-gtk
# 安装ncurses开发包
# sudo apt -get install libncurses5-dev
# cd ~/install
# tar xjvf vim- 7.2.tar.bz2，会在~/install目录下生成一个vim72目录
# tar xzvf vimgdb72-1.14.tar.gz， 会在~/install目录下生成一个vimgdb目录
# patch -d vim72 --backup -p0 < vimgdb/vim72.diff

# install convmv: converts filenames from one encoding to another
sudo apt-get -y install dos2unix convmv
# uconv
sudo apt-get -y install libicu-dev

sudo apt-get -y install build-essential dpkg-dev zlib1g-dev libpcre3 libpcre3-dev unzip
sudo apt-get -y install build-essential libtool autoconf automake
sudo apt-get -y install clang flex bison gccxml
sudo apt-get -y install cvs subversion git git-flow git-review tig gitg
sudo apt-get -y install sqlite3
sudo apt-get -y install astyle indent tidy
sudo apt-get -y install perl-doc perltidy
sudo apt-get -y install libyaml-perl
sudo apt-get -y install bpython python-pip python-docutils rest2web
sudo apt-get -y install doxygen doxygen-doc
sudo apt-get -y install manpages-posix manpages-posix-dev
sudo apt-get -y install valgrind
sudo apt-get -y install lcov
sudo apt-get -y install coffeescript
sudo apt-get -y install nodejs npm
sudo npm install jasmine-node

sudo apt-get -y install regexxer sqlitebrowser
sudo apt-get -y install eclipse-cdt eclipse-jdt eclipse-egit
sudo apt-get -y install kompozer bluefish

sudo pip install -U https://github.com/jkbr/httpie/tarball/master

sudo add-apt-repository ppa:jerzy-kozera/zeal-ppa
sudo apt-get update
sudo apt-get install zeal


# xsel
sudo apt-get -y install xsel tree fdupes sl
# tmux
sudo apt-get -y install tmux
# trash-cli
sudo apt-get install trash-cli


########################################################################
# multimedia tools

# install mp3 codec
sudo apt-get -y install gtkpod
sudo apt-get -y install mp3gain
sudo apt-get -y install lame

########################################################################
# misc

# game
sudo apt-get -y install kigo

# install gstream codecs for Rhythmbox

# share keyboard/mouse with another computer
sudo apt-get -y install synergy quicksynergy


# sudo apt-get -y install vsftpd
# sudo mkdir /home/ftp /home/ftp/upload
# sudo chmod 555 /home/ftp
# sudo chmod 777 /home/ftp/upload
# sudo vi /etc/vsftpd.conf

# Install thinkpad pointing scroll emulation settings
#sudo apt-get -y install gpointing-device-settings

# enable hibernate
# sudo apt-get -y install uswsusp
# Re: hibernate problem
# You should give us more than 10 minutes before bumping
#
# This may or may not work. It worked for me though.
#
#
# Ensure your swap space is in use.
# Code:
#
# cat /proc/swaps
#
# If not, re-create it. Change /dev/hdXX to whatever your swap partition is.
# Code:
#
# sudo mkswap -c /dev/hdXX
#
# Activate your swap.
# Code:
#
# sudo swapon /dev/hdXX
#
# Ensure your resume partition is set properly.
# Code:
#
# sudo nano -w /etc/initramfs-tools/conf.d/resume
#
# Change this to /dev/hdXX then regenerate your initrd.
# Code:
#
# sudo update-initramfs -u
#
# Reboot then test.
#
# Good luck.
#
# 接下来解决USB设备不认或者分配失败的问题.
# 将当前用户添加到vboxusers组下.
# 可以编辑 /etc/group 文件,也可以用groupadd命令.甚至可以点系统--系统管理--用户和组来配置.
# 重启Ubuntu
#
#
# 注意,需要顺序的操作来了!!
# 查看hald是否已经在运行
# 代码:
# ps -df|grep hald
#
# 如果有杀掉
# 代码:
# sudo killall hald
#
# 或者用kill 逐个杀
# 运行
# 代码:
# sudo hald --daemon=no
#
# 这是不可插入U盾
# 先打开VirtualBox,点击设置--usb设备
# 这时插入U盾,等一会USB设备识别后,再添加U盾USB设备到筛选列表
# 打开虚拟机,这样应该能够顺利挂载了
# 进入后自行安装驱动,大功告成.

####################################################################################
# remove old kernel versions, clean up boot menu
#
# $ uname -r
# DO NOT REMOVE THIS KERNEL!
#
# Next, type the command below to view / list all installed kernels on your system.
#
# $ dpkg --list | grep linux-image
#
# Find all the kernels that lower than your current kernel. When you know which kernel
# to remove, continue below to remove it. Run the commands below to remove the kernel
# you selected.
#
# $ sudo apt-get purge linux-image-x.x.x.x-generic
#
# Finally, run the commands below to update grub2
#
# $ sudo update-grub2
#
# Reboot your system.
