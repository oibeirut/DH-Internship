# 1. read input data from file
import os
v_dir = os.path.dirname("/BachUni/OIB/OIBSync/DH Beauftragter/DHPraktikum/GitHub/DH-Internship/unicode_issue/")
v_dir_output = os.path.join(v_dir, "python/_output/")
v_filename = "sample_mixed-arabic.txt"
with open(os.path.join(v_dir, v_filename), "r") as v_file:
	v_text = unicode(v_file.read(), "utf-8") # at least in python 2, one has to explicitly encode somthing as Unicode

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
save_list_to_json(os.path.join(v_dir_output, "frequencies_characters-1.json"), v_frequencies_1)
save_list_to_json(os.path.join(v_dir_output, "frequencies_characters-2.json"), v_frequencies_2)

