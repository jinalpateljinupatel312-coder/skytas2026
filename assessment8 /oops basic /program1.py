class Car:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model
        self.speed = 0  

    def accelerate(self, increase):
        self.speed += increase
        print(f"Accelerated by {increase} km/h. Current speed: {self.speed} km/h")

    def brake(self, decrease):
        self.speed -= decrease
        if self.speed < 0:
            self.speed = 0
        print(f"Braked by {decrease} km/h. Current speed: {self.speed} km/h")



car1 = Car("Toyota", "Corolla")

car1.accelerate(30)
car1.accelerate(20)
car1.brake(15)
car1.brake(50)
