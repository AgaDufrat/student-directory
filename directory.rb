
def input_students
  @students = []
  cohorts = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
  puts "Please enter the names of the students and their details"
  puts "To finish, just hit return twice  when you are asked for a name"
  name = gets
  name = name[0...name.length - 1]
  puts "Enter their cohort"
  cohort = gets.chomp
  while !name.empty? do
    # provide default value if empty
    cohort = :novmeber if cohort.empty?
    # check for typos
    while !cohorts.include? cohort
      puts "Looks like you made a typo, try again"
      cohort = gets.chomp.to_sym
    end
    @students << {name: name, cohort: cohort}
    if @students.count == 1
      puts "Now we have #{@students.count} student"
    else
      puts "Now we have #{@students.count} students"
    end
    puts "Enter the name of the student"
    name = gets.chomp
    puts "Enter their cohort"
    cohort = gets.chomp.to_sym
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  i = 0
    while i < @students.length do
        puts "#{i + 1}. #{@students[i][:name]} (#{@students[i][:cohort]} cohort)"
        i +=1
    end
end

def print_footer
  if @students.count == 1
    puts "Overall, we have #{@students.count} great student"
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end
#nothing happens until we call the methods
interactive_menu
