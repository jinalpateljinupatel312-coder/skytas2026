class vehicle:
    def move(self):
        print("vehicle is moving")

class car(vehicle):
    def drive(self):
        print("car is driving")

class ElectricCar(car):
    def charge(self):
        print("Electric car is charging")

ec = ElectricCar()
ec.move()
ec.drive()
ec.charge()
