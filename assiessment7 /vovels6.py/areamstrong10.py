def is_armstrong(num):
    temp = num
    sum = 0
    n = len(str(num))

    while temp > 0:
        digit = temp % 10
        sum += digit ** n
        temp //= 10

    return sum == num

print(is_armstrong(153))
