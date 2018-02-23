#Must unzip outer folder, then run this within the new submissions folder
#unzip .zip files
for f in *.zip
do
    #get the name to make new folder
    b=$(basename $f)
    dest=$(echo $f | cut -d"_" -f 1,2)
    unzip $f -d $dest
done
# remove all the zip files
rm *.zip
#handle .tar.gz files
for f in *.tar.gz
do
    dest=$(echo $f | cut -d"_" -f 1,2)
    #must make directory to zip to
    mkdir $dest
    tar -xzf $f -C $dest
done
#remove archive files
rm *.tar.gz
#handle .tar files
for f in *.tar
do
    dest=$(echo $f | cut -d"_" -f 1,2)
    #must make directory to zip to
    mkdir $dest
    tar -xf $f -C $dest
done
rm *.tar
exit 0
