signal = input("Enter traffic light color (red/yellow/green): ").lower()

if signal == "red":
    print("Stop")
elif signal == "yellow":
    print("Wait")
elif signal == "green":
    print("Go")
else:
    print("Invalid signal")
