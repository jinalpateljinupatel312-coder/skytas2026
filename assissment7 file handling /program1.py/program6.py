word = input("Enter the word to search: ")

with open("sample.txt", "r") as file:
    for line in file:
        if word in line:
            print(line.strip())
Python is easy
I love Python programming
Java is different
