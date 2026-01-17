# Input a number
num = int(input("Enter a number: "))

# Check multiple conditions
# Example: number should be positive AND even, OR equal to 15
if (num > 0 and num % 2 == 0) or num == 15:
    print("Condition met!")
else:
    print("Condition not met!")
