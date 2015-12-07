parted -s -a optimal /dev/$1 mklabel gpt
parted -s -a optimal /dev/$1 mkpart osd-device-0-journal 0% 74G
parted -s -a optimal /dev/$1 mkpart osd-device-1-journal 74G 148G
parted -s -a optimal /dev/$1 mkpart osd-device-2-journal 148G 222G
parted -s -a optimal /dev/$1 mkpart osd-device-3-journal 222G 296G
parted -s -a optimal /dev/$1 mkpart osd-device-5-journal 296G 370G

parted -s -a optimal /dev/$2 mklabel gpt
parted -s -a optimal /dev/$2 mkpart osd-device-6-journal 0% 74G
parted -s -a optimal /dev/$2 mkpart osd-device-7-journal 74G 148G
parted -s -a optimal /dev/$2 mkpart osd-device-8-journal 148G 222G
parted -s -a optimal /dev/$2 mkpart osd-device-9-journal 222G 296G
parted -s -a optimal /dev/$2 mkpart osd-device-10-journal 296G 370G

parted -s -a optimal /dev/$3 mklabel gpt
parted -s -a optimal /dev/$3 mkpart osd-device-11-journal 0% 74G
parted -s -a optimal /dev/$3 mkpart osd-device-12-journal 74G 148G
parted -s -a optimal /dev/$3 mkpart osd-device-13-journal 148G 222G
parted -s -a optimal /dev/$3 mkpart osd-device-14-journal 222G 296G
parted -s -a optimal /dev/$3 mkpart osd-device-15-journal 296G 370G
