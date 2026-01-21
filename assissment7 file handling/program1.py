
try:
    with open("sample.txt", "r") as f:
        print(f.read())
except FileNotFoundError:
    print("Error: sample.txt file not found")
