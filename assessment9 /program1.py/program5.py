
class Circle:
    def draw(self):
        print("Drawing circle")

class Rectangle:
    def draw(self):
        print("Drawing Rectangle")

def draw_shape(shape):
    shape.draw()

draw_shape(Circle())
draw_shape(Rectangle())