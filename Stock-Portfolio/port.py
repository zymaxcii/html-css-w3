# port.py

import csv

with open('port.txt') as csv_file:
	csv_reader= csv.reader(csv_file, delimiter=' ')
	line_count = 0
	
	for row in csv_reader:
		print(row)
		
	


