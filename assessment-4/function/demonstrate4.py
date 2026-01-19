
try:
    a = int(input("Enter first number: "))
    b = int(input("Enter second number:"))

    result = a / b
    print("Result:", result)

except ValueError:
    print("Enter: Invalid input. please enter integer only. ")

except ZeroDivisionError:
    print("Error: Divion by zero is not allowed.")

except Exception as e:
    print("Unexpected error:", e)

else:
    print("Program executed successfully.")

finally:
    print("Execution completed.")



