# adding an array for hashes of students
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
    #empty array for students
  students = []
    #getting the first name
  name = gets.chomp
    # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name
    name = gets.chomp
  end
  students
end  
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

students = input_students
# calling the methods
print_header
# passing students array as argument 
print_list(students)
print_footer(students)
