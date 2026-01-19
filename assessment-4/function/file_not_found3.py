try:
    f = open("data.txt", "r")
    print(f.read())
    f.close()

except FileNotFoundError:
    print("Error: File not found. Please check the file name.")

