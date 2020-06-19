ng build --aot=true --buildOptimizer=true --prod=true --sourceMap=false
cd dist/gh-page
tar -czvf ../build.tar.gz *
scp -i $1 ../build.tar.gz ubuntu@54.212.108.239:~/build.tar.gz
echo "Now run 'sudo bash copy_files.sh ~/build.tar.gz' on server."
