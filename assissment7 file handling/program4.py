
with open("sentences.txt", "w") as file:
    for i in range(1,6):
        sentence = input(f"Enter sentence {i}: ")
        file.write(sentence + "\n")

print("5 sentences have been writtten to the file.")

