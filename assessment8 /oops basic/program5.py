class Employee:
    def __init__(self, emp_id, name, salary):
        self.emp_id = emp_id
        self.name = name
        self.salary = salary

    def display_salary(self):
        print("Employee ID:", self.emp_id)
        print("Employee Name:", self.name)
        print("Salary:", self.salary)

e1 = Employee(1, "Jinal", 35000)
e1.display_salary()
