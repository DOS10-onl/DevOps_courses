#!/bin/bash

# have two strings inside: Hello string and current date-time
touch /home/dmitryyankov/lesson13/two.txt

echo "Hello string" > /home/dmitryyankov/lesson13/two.txt
echo `date` >> /home/dmitryyankov/lesson13/two.txt
# empty file with 777 permissions set
touch /home/dmitryyankov/lesson13/777.txt
# echo "777" > /home/dmitryyankov/lesson13/777.txt
chmod 777 /home/dmitryyankov/lesson13/777.txt

# have one random string
echo $RANDOM | md5sum | head -c 20 > /home/dmitryyankov/lesson13/random.txt

# just empty file
touch /home/dmitryyankov/lesson13/file{1..2}.txt
