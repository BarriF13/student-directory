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
# printing the title
puts "The students of Villains Academy"
puts "--------------------------------"
# using each method to print the list
  students.each {|student|puts student}
# printing the total
puts "Overall, we have #{students.count} great students"