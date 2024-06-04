#почистити систему від непотрібних версій ядра
apt remove $(dpkg-query --show 'linux-modules-*' | cut -f1 | grep -v "$(uname -r)") 

#видалити старі версії СНАПА - це скрипт
set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done

#Масове перейменування папок і файлів
find -type d -exec chmod 755 {} \;
find -type f -exec chmod 644 {} \; 