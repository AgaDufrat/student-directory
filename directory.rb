
def input_students
  students = []
  puts "Please enter the names of the students and their details"
  puts "To finish, just hit return twice"
  name = gets.chomp
  puts "Enter their date of birth"
  dob = gets.chomp
  puts "Enter their country of birth"
  country = gets.chomp
  while !name.empty? do
    students << {name: name, dob: dob, country: country, cohort: :november}
    puts "Now we have #{students.count} students"
    puts "Enter the name of the student"
    name = gets.chomp
    puts "Enter their date of birth"
    dob = gets.chomp
    puts "Enter their country of birth"
    country = gets.chomp
  end
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  i = 0
  while i < students.length do
    puts "#{i + 1}. #{students[i][:name]} born on #{students[i][:dob]} in #{students[i][:country]} (#{students[i][:cohort]} cohort)"
    i +=1
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
