class Shop:
    def __init__(self, name):
        self.name = name
        self.products = []  # List to store products

    def add_product(self, product_name):
        """Adds a product to the shop"""
        self.products.append(product_name)
        print(f"'{product_name}' has been added to {self.name}.")

    def list_products(self):
        """Lists all products in the shop"""
        if self.products:
            print(f"Products in {self.name}:")
            for index, product in enumerate(self.products, start=1):
                print(f"{index}. {product}")
        else:
            print(f"No products in {self.name} yet.")


# Example usage:
my_shop = Shop("Jinu's Store")
my_shop.add_product("Laptop")
my_shop.add_product("Smartphone")
my_shop.list_products()
