# This program will loop through all submission
# after they have been sorted and unziped and run
# all of the labs and the assignments

# Author: Rece Coffin



#loop through folders
for i in $(ls -d */); do
    cd $i
#enter the SetX folder within the submission
    cd *
    for d in $(ls -d */); do
        cd $d
        #show us the folder
        pwd
#compile and run the program
        g++ -std=c++0x *.cpp
        ./a.out
#open in editor to read the code
        gedit *.cpp
        cd ..
    done
    cd ..
    cd ..
done
exit 0
