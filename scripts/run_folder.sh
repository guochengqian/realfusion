topdir=$1
device=$2
for i in $topdir/*; do
    echo "$i"
    bash scripts/run.sh $device "$i" ${@:3}
done
