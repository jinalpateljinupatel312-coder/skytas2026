sentence = input("Enter a sentence: ")
word = input("Enter a word to search for: ")

if word.lower() in sentence.lower():
    print(f"The word '{word}' is present in the sentence.")
else:
    print(f"The word '{word}' is NOT present in the sentence.")
