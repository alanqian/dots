sudo apt-get purge openjdk
sudo apt-get install oracle-java6-installer
sudo apt-get install oracle-java8-installer
exit 0

# install oracle java7
sudo add-apt-repository ppa:webupd8team/java
# sudo add-apt-repository ppa:eugenesan/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

sudo apt-get install oracle-java7-installer
sudo apt-get purge openjdk*
exit 0

# for eclipse
ln -s /usr/lib/jni/libswt-* ~/.swt/lib/linux/x86_64/
exit 0


# See 'sudo update-alternatives --config java' for more information.
#sudo update-java-alternatives -s java-6-oracle

# $ wget http://download.oracle.com/otn-pub/java/jdk/6u34-b04/jdk-6u34-linux-i586.bin
# $ chmod u+x jdk-6u34-linux-i586.bin
# $ ./jdk-6u34-linux-i586.bin
# $ sudo mkdir -p /usr/lib/jvm
# $ sudo mv jdk1.6.0_34 /usr/lib/jvm/

JAVA=jdk1.6.0_31

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/${JAVA}/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/${JAVA}/bin/javac" 1
#sudo update-alternatives --install "/usr/lib/mozilla/plugins/libjavaplugin.so" "mozilla-javaplugin.so" "/usr/lib/jvm/jdk1.6.0_34/jre/lib/i386/libnpjp2.so" 1

