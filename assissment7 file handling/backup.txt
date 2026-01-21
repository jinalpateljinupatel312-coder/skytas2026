try:
    with open("program10.py", "r", encoding="utf-8") as f1:
        data = f1.read()
except FileNotFoundError:
    print("Error: 'original.txt' not found.")
    exit()

try:
    with open("backup.txt", "w", encoding="utf-8") as f2:
        f2.write(data)
    print("Backup created successfully!")
except Exception as e:
    print("Error while creating backup:", e)
