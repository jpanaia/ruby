# Write a program that splits the class into teams of 2. 
# If there's an odd number of students the last group should be a group of 3.

students = ['Daniele','Anita', 'Ben', 'Jojo', 'Thomas', 'Matthew', 'Mark', 'Jennifer','Cameron']

students.shuffle!

# set a count
count = 0
num_students = students.length

# until count is the number of students
until count == num_students
  # odd # students
  if num_students % 2 == 1
    if count < num_students - 3
      # output pairs of students
      puts "#{students[count]} & #{students[count+1]}"
    else
      puts "#{students[count]}, #{students[count+1]} & #{students[count+2]}"
      break
    end
  else # even # students
    # output pairs of students
    puts "#{students[count]} & #{students[count+1]}"
  end
  # increase the count
  count += 2 
end # end until