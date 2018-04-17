# This program is used to process a single submission downloaded 
# directly from canvas
# Author: Rece COffin

# Unzip the download
unzip *.zip

# Enter the assignment folder and run the program
cd *
cd A5
g++ -std=c++0x *.cpp
./a.out
cd ..

# Loop through all directories and view the code
for d in $(ls -d */); do
    cd $d
    pwd
    gedit *.cpp
    cd ..
done

# Clean up, hard coded for use in the ~/Downloads directory
cd ~/Downloads
rm -r Set5*
exit 0

