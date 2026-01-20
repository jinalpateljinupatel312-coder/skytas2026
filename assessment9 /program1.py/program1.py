
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print("The animal makes a sound")

class Dog(Animal):
    def speak(self):
        print(f"{self.name} says: woof!")

class cat(Animal):
    def speak(self):
        print(f"{self.name} says: meow!")

dog = Dog("Buddy")
cat = cat("Whiskers")

dog.speak()
cat.speak()