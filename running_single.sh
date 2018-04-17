unzip *.zip
cd *
cd A5
g++ -std=c++0x *.cpp
./a.out
cd ..

for d in $(ls -d */); do
    cd $d
    pwd
    gedit *.cpp
    cd ..
done
cd ~/Downloads
rm -r Set5*
exit 0

