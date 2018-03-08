for i in LRU FIFO
do

./mcpat -infile ./raw_results/output\ ${i}_${i}_Facesim.xml -print_level 5 -opt_for_clk 1  2>&1 | tee ./mcpat_results/result_${i}_${i}_Facesim.txt

done

