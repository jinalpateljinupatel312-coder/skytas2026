
class brother:
    def skills(self):
        print("Gardening")

class sister:
    def skills(self):
        print("cooking")

class child(brother, sister):
    pass

c = child()
c.skills()