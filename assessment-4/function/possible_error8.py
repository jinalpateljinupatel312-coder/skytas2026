
try:
    a = int(input("Enter first number: "))
    b = int(input("Enter second number: "))

    result = a / b
    print("Result:" ,result)

except ValueError:
    print("Error: please enter valid integer only.")

except ZeroDivisionError:
    print("Error: Division by zero is not allowed.")

except Exception as e:
    print("Unexpected error occurred:", e)

else:
    print("Operation completed successfully.")

finally:
    print("Program execution finished.")