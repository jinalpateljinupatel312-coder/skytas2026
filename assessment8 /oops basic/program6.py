class Book:
    def __init__(self, title, author, price):
        self.title = title
        self.author = author
        self.price = price

    def display_details(self):
        print("Book Title:", self.title)
        print("Author:", self.author)
        print("Price:", self.price)

b1 = Book("Python Programming", "Guido van Rossum", 450)
b1.display_details()
