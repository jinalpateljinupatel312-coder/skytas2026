def count_digits(n):
    n = abs(n)  
    if n == 0:
        return 1
    count = 0
    while n > 0:
        n = n // 10  
        count += 1
    return count

num = int(input("Enter a number: "))
print("Number of digits:", count_digits(num))
