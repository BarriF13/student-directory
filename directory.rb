@students = [] # available for all the method

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
    #getting the first name
  name = gets.chomp
    # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name
    name = gets.chomp
  end
end 

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
   end 
end

def print_menu
  #----- 1.print the menu and ask the user to choose
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. exit" # ---------9 adding more item later
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit # for terminating the program
  else
    puts "I don't know what you meant, try again"
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------------------------"
end
# making the list (body)
def print_student_list
    @students.each {|student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end


interactive_menu



