
try:
    age = int(input("Enter your age: "))
    
    if age < 18:
        raise InvalidAgeError("Age must be 18 or above.")
    
    print("Age is valid. Acess granted.")

except InvalidAgeError as e:
    print("custome Exception", e)

except ValueError:
    print("Enter: please enter a valid integer age.")

class InvalidAgeError(Exception):
    pass
    