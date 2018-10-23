
def input_students
  students = []
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each_with_index do |student, index|
    if student[:name][0].length < 12 # name shorter that 12
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
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
