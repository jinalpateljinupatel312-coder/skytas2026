
try:
    file = open("sample.txt", "r")
    content = file.read()
    print(content)

except FileNotFoundError:
    print("Error: file not found.")

finally:
    if 'file' in locals():
        file.close()
        print("file closed sucessfully.")