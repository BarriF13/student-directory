#adding the menu
def interactive_menu
  students = []
  loop do
      
    # 1.print the menu and ask the user to choose
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. exit" # ---------9 adding more item later
    
    # 2. read the input and save it into a variable
    selection = gets.chomp
    
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      # print the student list
      print_header
      # passing students array as argument 
      print_list(students)
      print_footer(students)
    when "9"
      exit # for terminating the program
    else
      puts "I don't know what you meant, try again"
    end 
    # 4. repeat from step1
  end
end

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


interactive_menu

