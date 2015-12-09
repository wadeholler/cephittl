for i in $(find /sys/devices -name scheduler | grep -v -e nvme -e virt)
do 
echo cfq > ${i}
done
