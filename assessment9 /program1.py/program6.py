class BankAccount:
    def __init__(self, balance):
        self.balance = balance

class SavingsAccount(BankAccount):
    def account_type(self):
        print("Savings Account")

class CurrentAccount(BankAccount):
    def account_type(self):
        print("Current Account")

s = SavingsAccount(500000)
c = CurrentAccount(100000)

s.account_type()
c.account_type()
