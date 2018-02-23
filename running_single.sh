for d in $(ls -d */); do
    cd $d
    pwd
    g++ -std=c++0x *.cpp
    ./a.out
    gedit *.cpp
    cd ..
done
exit 0
