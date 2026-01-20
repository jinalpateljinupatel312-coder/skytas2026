class Laptop:
    def __init__(self, brand, model, price):
        self.brand = brand
        self.model = model
        self.price = price

    def apply_discount(self, discount_percent):
        discount_amount = (discount_percent / 100) * self.price
        self.price = self.price - discount_amount
        return self.price


# Example usage
l1 = Laptop("Dell", "Inspiron", 60000)

print("Original Price:", 60000)
print("Price after 10% discount:", l1.apply_discount(10))
