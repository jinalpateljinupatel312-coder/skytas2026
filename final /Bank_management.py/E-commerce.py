class Product:
    def __init__(self, pid, name, price):
        self.pid = pid
        self.name = name
        self.price = price


class Cart:
    def __init__(self):
        self.items = []

    def add_product(self, product):
        self.items.append(product)
        print(f"{product.name} added to cart.")

    def remove_product(self, pid):
        for product in self.items:
            if product.pid == pid:
                self.items.remove(product)
                print(f"{product.name} removed from cart.")
                return
        print("Product not found in cart.")

    def view_cart(self):
        if not self.items:
            print("Cart is empty.")
            return

        print("\n--- Your Cart ---")
        total = 0
        for product in self.items:
            print(f"{product.pid} - {product.name} - ₹{product.price}")
            total += product.price
        print("Total Amount: ₹", total)


# ---- Main Program ----
products = [
    Product(1, "Laptop", 50000),
    Product(2, "Mobile", 20000),
    Product(3, "Headphones", 2000),
    Product(4, "Keyboard", 1500)
]

cart = Cart()

while True:
    print("\n=== E-Commerce Cart System ===")
    print("1. View Products")
    print("2. Add to Cart")
    print("3. Remove from Cart")
    print("4. View Cart")
    print("5. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        print("\n--- Available Products ---")
        for p in products:
            print(f"{p.pid}. {p.name} - ₹{p.price}")

    elif choice == "2":
        pid = int(input("Enter product ID to add: "))
        for p in products:
            if p.pid == pid:
                cart.add_product(p)
                break
        else:
            print("Invalid product ID.")

    elif choice == "3":
        pid = int(input("Enter product ID to remove: "))
        cart.remove_product(pid)

    elif choice == "4":
        cart.view_cart()

    elif choice == "5":
        print("Thank you for shopping with us!")
        break

    else:
        print("Invalid choice. Try again.")
