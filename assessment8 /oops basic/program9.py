class Flight:
    def __init__(self, flight_no, total_seats):
        self.flight_no = flight_no
        self.total_seats = total_seats
        self.booked_seats = 0

    def book_seat(self, seats):
        if self.booked_seats + seats <= self.total_seats:
            self.booked_seats += seats
            print(seats, "seat(s) booked successfully")
        else:
            print("Not enough seats available")

    def available_seats(self):
        return self.total_seats - self.booked_seats


# Example usage
f1 = Flight("AI-202", 100)

f1.book_seat(30)
print("Available Seats:", f1.available_seats())

f1.book_seat(80)
