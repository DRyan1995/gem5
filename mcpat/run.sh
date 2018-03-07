for i in blackschole bodytrack canneal dedup facesim
do 
	./mcpat -infile output-${i}.xml -print_level 5 -opt_for_clk 1  > result_${i}.txt


done
