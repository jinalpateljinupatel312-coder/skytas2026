
balance = float(input("Enter your account balance:"))
withdraw = float(input("Enter withdrawal amount:"))

if withdraw <= balance:
    print("withdrawal successfully. sufficient balance.")
else:
    print("Insufficient balance.")