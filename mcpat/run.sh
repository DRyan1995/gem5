for i in LFU LRU FIFO
do
	for j in LFU LRU FIFO
	do 
	echo "\n\nrunning ${i} ${j} Canneal ..."
	./mcpat -infile ./raw_results/output\ ${i}_${j}_Canneal.xml -print_level 5 -opt_for_clk 1  2>&1 | tee ./mcpat_results/result_${i}_${j}_Canneal.txt
 	sleep 1

	done
done

for i in LRU FIFO
do
echo "\n\nrunning ${i} ${i} Facesim ..."
./mcpat -infile ./raw_results/output\ ${i}_${i}_Facesim.xml -print_level 5 -opt_for_clk 1  2>&1 | tee ./mcpat_results/result_${i}_${i}_Facesim.txt

done

