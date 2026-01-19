
try:
    numbers = [10,20,30,40,50]
    index = int(input("Enter index value "))

    print("Element at index", index, "is:", numbers[index])

except IndexError:
    print("Error: Index out of range.")

except ValueError:
    print("Error: please enter a valid integer index.")