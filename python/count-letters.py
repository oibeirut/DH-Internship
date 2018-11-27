import collections
import string

def count_letters(filename, case_sensitive=False):
    with open(filename, 'r') as f:
        text = f.read()

    if case_sensitive:
        alphabet = string.ascii_letters
    else:
        alphabet = string.ascii_lowercase
        text = text.lower()

    letter_count = collections.Counter()

    for char in text:
        if char in alphabet:
            letter_count[char] += 1

    for letter in alphabet:
        print(letter, letter_count[letter])

    print("total:", sum(letter_count.values()))