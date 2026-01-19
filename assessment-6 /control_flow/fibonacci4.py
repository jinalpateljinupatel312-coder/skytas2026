
n = int(input("Enter the number of Fibonacci numbers to generate: "))


fib_sequence = []


a, b = 0, 1
for _ in range(n):
    fib_sequence.append(a)
    a, b = b, a + b


print(f"The first {n} Fibonacci numbers are:")
print(fib_sequence)
