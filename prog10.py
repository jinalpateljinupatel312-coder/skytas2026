
numerator = int(input("Enter the numerator: "))
denominator = int(input("Enter the denominator: "))


if denominator == 0:
    print("Error: Division by zero is not allowed.")
else:
    
    quotient = numerator // denominator  
    remainder = numerator % denominator  


    print("Quotient:", quotient)
    print("Remainder:", remainder)
