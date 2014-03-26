# audio codecs
sudo apt-get -y install ffmpeg gstreamer0.10-ffmpeg libmpeg2-4 mp3gain lame chromium-codecs-ffmpeg
# video format support
sudo apt-get -y install libavcodec53
sudo mkdir /usr/lib/codecs; sudo tar xf codecs/20110131.tgz -C /usr/lib/codecs

# webcam tools
sudo apt-get -y install cheese vlc vlc-nox mplayer mencoder streamer

sudo apt-get -y install mp3splt-gtk rhythmbox
sudo apt-get -y install gnash

# libdv
#sudo apt-get install libdvpau1
#sudo apt-get install libdv4 libdv4-dev

# smplayer
sudo apt-get install smplayer
