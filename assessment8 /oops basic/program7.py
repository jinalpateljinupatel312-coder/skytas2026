import math

class Circle:
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return math.pi * self.radius * self.radius

    def circumference(self):
        return 2 * math.pi * self.radius


# Example usage
c = Circle(7)

print("Area of Circle:", c.area())
print("Circumference of Circle:", c.circumference())
