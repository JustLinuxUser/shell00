rm -rf a* b* sw*
tar -xf resources.tar.gz
rm -rf ._*
patch a sw.diff -o b
