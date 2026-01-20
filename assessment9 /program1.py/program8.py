
class Teacher:
    def teach(self):
        print("Teaching students")

class Student(Teacher):
    def study(self):
        print("Studying")

s = Student()
s.teach()
s.study()
