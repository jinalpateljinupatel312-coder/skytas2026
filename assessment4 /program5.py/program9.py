age = int(input("Enter your age: "))
has_id = input("Do you have an ID card? (yes/no): ")

if age >= 18 and has_id == "yes":
    print("You are allowed to enter.")
else:
    print("You are not allowed to enter.")
