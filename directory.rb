# adding an array for hashes of students

students = [
{name: "Dr. Hannibal Lecter", cohort: :novermber},
{name:"Darth Vader", cohort: :novermber},
{name:"Nurse Rathed", cohort: :novermber},
{name:"Michael Corleone", cohort: :novermber},
{name:"Alex Delarge", cohort: :novermber},
{name:"The wicked witch of the west", cohort: :novermber},
{name:"Terminator", cohort: :novermber},
{name:"Freddy Krueger", cohort: :novermber},
{name:"The Joker", cohort: :novermber},
{name:"Joffrey Baratheon", cohort: :novermber},
{name:"Norman Bates", cohort: :novermber}
]
# making a header
def print_header
  puts "The students of Villains Academy"
  puts "--------------------------------"
end
# making the list (body)
def print_list(students)
  
  students.each {|student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end
# printing the total
def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

# calling the methods
print_header
# passing students array as argument 
print_list(students)
print_footer(students)
