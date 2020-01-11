# adding an array for students

students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Rathed",
"Michael Corleone",
"Alex Delarge",
"The wicked witch of the west",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]
# making a header
def print_header
  puts "The students of Villains Academy"
  puts "--------------------------------"
end
# making the list (body)
def print_list(names)
  names.each {|name|puts name}
end
# printing the total
def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

# calling the methods
print_header
# passing students array as argument 
print_list(students)
print_footer(students)
