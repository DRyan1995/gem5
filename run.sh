for j in blackscholes #canneal #facesim #bodytrack dedup
do
    for i in 2
    do
	echo "**************running ${j} ${i} ..."
	echo "    "
	build/ALPHA/gem5.opt configs/example/fs.py --cpu-type=DerivO3CPU --script=run_scripts/${j}_1c_simsmall.rcS \
			     --num-cpus=1 --caches --l2cache --l2_size=512kB --l1d_size=32kB --l1i_size=32kB --l1d_assoc=${i} \
			     --kernel=/home/ryan/gem5_ALPHA_FS/gem5/full_system_images_ALPHA/binaries/vmlinux_2.6.27-gcc_4.3.4 \
			     --disk-image=/home/ryan/gem5_ALPHA_FS/gem5/full_system_images_ALPHA/disks/linux-parsec-2-1-m5-with-test-inputs.img

	cp m5out/stats.txt ../results/${j}_${i}_result.txt
    cp m5out/config.ini ../results/${j}_${i}_config.ini
	echo "****************finish ${j} ${i} "
	echo " "
    done
done
