#Need to change the number for each section
for i in $(ls -d */); do
  cd $i
  #enter setX folder
  cd *
  #enter the assignment and run it
  cd A5
  #show the directory
  pwd
  #compile and run
  g++ -std=c++0x *.cpp
  ./a.out
  #leave assignment
  cd ..
  #remove the assignment folder ond view the rest of the code
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
