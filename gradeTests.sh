# Program to loop through the test
# submissions and open the code to read it

# Author : Rece Coffin
for i in $(ls -rd */); do
  cd $i
  #Enter sub folder
  cd exam2probf
  gedit solution.cpp
  cd ..
  cd ..
done
exit 0
