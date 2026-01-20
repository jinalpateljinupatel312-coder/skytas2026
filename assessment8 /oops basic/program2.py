class BankAccount:
    def __init__(self, name, balance=0):
        self.name = name
        self.balance = balance

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print("Deposited:", amount)
            print("Current Balance:", self.balance)
        else:
            print("Invalid deposit amount")

    def withdraw(self, amount):
        if amount <= self.balance:
            self.balance -= amount
            print("Withdrawn:", amount)
            print("Current Balance:", self.balance)
        else:
            print("Insufficient balance")


acc = BankAccount("Jinal", 1000)
acc.deposit(500)
acc.withdraw(300)
