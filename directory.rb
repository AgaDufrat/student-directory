
def input_students
  students = []
  cohorts = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
  puts "Please enter the names of the students and their details"
  puts "To finish, just hit return twice  when you are asked for a name"
  name = gets.chomp
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
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    puts "Enter the name of the student"
    name = gets.chomp
    puts "Enter their cohort"
    cohort = gets.chomp.to_sym

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
    puts "#{i + 1}. #{students[i][:name]} (#{students[i][:cohort]} cohort)"
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
