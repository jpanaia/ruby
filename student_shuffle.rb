# Write a program that splits the class into teams of 2. 
# If there's an odd number of students the last group should be a group of 3.

# empty student array
students = []
student = ''

# prompt user
puts "Who showed up to class today? Type 'done' when finished:"

while student != 'done' 
  student = gets.chomp
  # push student into students array
  students.push(student)
end

# pop off last element 'done'
students.pop

# shuffle student array
students.shuffle!

# set a count
count = 0

num_students = students.length

puts "\nYour teams are:"
until count == num_students
  if num_students == 1    	
    puts "#{students[0]} has to work ALONE!!"
    break
  else
	  # Odd # students
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
	end
  # increase the count
  count += 2 
end # end until
