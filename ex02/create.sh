rm -rf test* exo2.tar
sleep 0.2
mkdir test0 test2
touch test{1,3,4}
ln test3 test5
ln -s test0 test6

echo -n "0000" > test1
echo -n "0" > test3
echo -n "00" > test4

touch -t 06012047 test0
touch -t 06012146 test1
touch -t 06012245 test2
touch -t 06012344 test3
touch -t 06012343 test4

touch -ht 06012220 test6 # -h for symbolyc links

chmod 715 test0
chmod 714 test1
chmod 504 test2
chmod 404 test3
chmod 641 test4
if [ -z "$1" ]; then
    echo running on a mac
    chmod -h 777 test6
fi
tar -cf exo2.tar test*
