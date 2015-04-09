#sudo apt-get install mingw32 mingw32-binutils mingw32-runtime
#gunzip -c /usr/share/doc/mingw32-runtime/mingwm10.dll.gz > mingwm10.dll
#i586-mingw32msvc-g++ -o foo.exe foo.cpp

sudo apt-get install mingw-w64 gcc-mingw-w64 g++-mingw-w64 binutils-mingw-w64
i686-w64-mingw32-g++ -static-libgcc -std=c++11 -o t.exe t.cpp
exit 0

# You have to use -static-libgcc while compiling with mingw’s g++ to elemenate the
# dependacy on libgcc_s_sjlj-1.dll. You can do that by:
#     QMAKE_LFLAGS += -static-libgcc

# mingw dll:
# http://qemu.weilnetz.de/w32/dll/

