
lines = [
    "This is first line\n",
    "This is second line\n",
    "This is third line\n"
]

with open("sample.txt", "a") as file:
    file.writelines(lines)

print("List of string appended successfully.")