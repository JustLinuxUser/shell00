rm -f testShell00 testShell00.tar
echo "000000000000000000000000000000000000000" > testShell00
touch -t 06012342 testShell00
chmod 455 testShell00
tar -cf testShell00.tar testShell00
