# 1. define a function that 
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

# 2. read input data from file
with open("/BachUni/BachBibliothek/GitHub/OIBeirut/bi_59/tei/bi_59-date-2018-11-12.TEIP5.xml", "r") as file:
	text = file.read()
# 3. run the function on a string

print(char_frequency(text))