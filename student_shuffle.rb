# Write a program that splits the class into teams of 2. 
# If there's an odd number of students the last group should be a group of 3.

students = ['Daniele', 'Alesia','Anita', 'Ben', 'Thomas', 'Matthew', 'Mark', 'Jennifer','Cameron']

students.shuffle!

# set a count
count = 0
num_students = students.length - 1

# until count is the number of students
until count == num_students
 
  # student pairs
  puts "#{students[count]} & #{students[count+1]}"
  
  # increase the count
  count += 2 
end # end until