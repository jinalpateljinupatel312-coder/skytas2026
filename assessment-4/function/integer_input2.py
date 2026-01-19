
try:
    num = int(input("Enter an integer: "))
    print("you entered:", num)

except ValueError:
    print("Error: Invalid input. please enter a valid integer.")