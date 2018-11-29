# 1. read input data from file
import os
v_dir = os.path.dirname("/BachUni/BachBibliothek/GitHub/OIBeirut/bi_59/tei/")
v_dir_output = os.path.join(v_dir, "_output/")
v_filename = "bi_59-date-2018-11-12.TEIP5.xml"
with open(os.path.join(v_dir, v_filename), "r") as v_file:
	v_text = unicode(v_file.read(), "utf-8")

# 2. define a function that 
# counts the frequency of characters in an input string
# source: https://www.w3resource.com/python-exercises/string/python-data-type-string-exercise-2.php
def char_frequency(str1):
    dict = {}
    for n in str1:
        keys = dict.keys()
        if n in keys:
            dict[n] += 1
        else:
            dict[n] = 1
    return dict

# 3. run the function on a string
v_frequencies_1 = char_frequency(v_text)

# 3. another approach at the same task
# another approach
from collections import defaultdict
v_frequencies_2 = defaultdict(int)

for v_char in v_text:
	v_frequencies_2[v_char] += 1

# save output to file
# function to save list in a text file
# PROBLEM: this throws an error with unicode input
def save_list_to_file(v_filepath, v_list):
	with open(v_filepath, 'w') as v_output:
		for v_item in v_list:
			v_output.write("{}\n".format(v_item))

# function to save list to JSON
import json
def save_list_to_json(v_filepath, v_list):
	with open(v_filepath, 'w') as v_output:
		json.dump(v_frequencies_1, v_output)

# save output
save_list_to_json(os.path.join(v_dir_output, "frequencies_1.json"), v_frequencies_1)
save_list_to_json(os.path.join(v_dir_output, "frequencies_2.json"), v_frequencies_2)

