class Student:
    def __init__(self, name, marks):
        self.name = name
        self.marks = marks   

    def calculate_average(self):
        total = sum(self.marks)
        average = total / len(self.marks)
        return average

marks_list = [77, 90, 90, 95, 92]
s1 = Student("Jinal", marks_list)

print("Student Name:", s1.name)
print("Average Marks:", s1.calculate_average())
