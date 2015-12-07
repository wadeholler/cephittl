x=0
for i in b c d e f g h i j k l m n o p 
do
parted -s -a optimal /dev/sd$i mklabel gpt || failed "mklabel /dev/sd$i"
parted -s -a optimal /dev/sd$i mkpart osd-device-$x-data 0% 100% || failed "mkpart $i-data"
let "x++"
done
