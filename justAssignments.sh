# This program will loop through all submissions
# after they have been unzipped and sorted
# and run ONLY THE ASSIGNMENT, while then opening 
# the code for the assignment and all labs

# Author: Rece Coffin



for i in $(ls -d */); do
  cd $i
  #enter setX folder
  cd *
  #enter the assignment and run it
  # Need to change for everty assignment
  cd A5
  #show the directory
  pwd
  #compile and run
  g++ -std=c++0x *.cpp
  ./a.out
  #leave assignment
  cd ..
  # Loop through all directories and view the code
  for d in $(ls -d */); do
    cd $d
    pwd
    #open to read code
    gedit *.cpp *.h
    cd ..
  done
  cd ..
  cd ..
done
exit 0
