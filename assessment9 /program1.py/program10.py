
class Parent:
    def show(self):
        print("This is parent class")

class Child(Parent):
    def show(self):
        super().show()
        print("This is Child class")

c = Child()
c.show()