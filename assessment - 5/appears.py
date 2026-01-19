
nested_list = [
    [10,20,30],
    [40,50,60],
    [70,80,90]
]
inner_index = int(input("Enter inner list number (0-2)"))
element_index = int(input("Enter element number in that list (0-2):"))

element = nested_list[inner_index][element_index]

print("Accessed element:", element)