
class Shape:
    def area(self):
        print("Areanot defined")

class Square(Shape):
    def area(self):
        print("Area of square = side * side")

s = Square()
s.area()