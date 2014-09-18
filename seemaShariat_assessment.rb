#1. Arrays
  array = ['Blake','Steven','Jeff']

# a. Add a element to an array

  array[3] = 'Seema'

# b. Write a statement to print out all the elements of the array.

  puts array

# c. Return the value at index 1.
 
  puts array[1]

# d. Return the index for the value 'Jeff'.

  puts array.index("Jeff")

#2. Hashes
 instructor = { :name=> 'Steven', :age=> 27 }

# a. Add a new key for location and give it the value 'NYC'.
 
instructor[:location] = 'NYC'

# b. Write a statement to print out all the key/value pairs in the hash

puts instructor

# c. Return the name value from the hash.

puts instructor[:name]

# d. Return the key name for the value 27.

instructor.each do |k, v| 
	if v == 27
	  puts k 
	end
end

# 3. Nested Structures
 school = {
	:name => 'Happy Funtime School',
	:location => 'NYC',
	:instructors => [
    	{:name=>'Blake', :subject=>'being awesome' },
	    {:name=>'Steven', :subject=>'being better than blake'},
		{:name=>'Jeff', :subject=>'karaoke'}
    ],
	:students => [
	   {:name => 'Marissa', :grade => 'B'},
	   {:name=>'Billy', :grade => 'F'},
	   {:name => 'Frank', :grade => 'A'},
	   {:name => 'Sophie', :grade => 'C'}
      ]
 }

# a. Add a key to the school hash called 'founded_in' and set it to the value 2013.

school[:founded_in] = 2013

# b. Add a student to the school's students' array.
# school[:students]  {:name => 'Seema', :grade => 'A'}
school[:students][4] = {:name=>"Seema", :grade=>"A"}

# c. Remove 'Billy' from the students' array.

school.each do |key, value|
	if key == :students
	  value.each do |s|
	    if s[:name] == "Billy"
	      value.delete(s)
      end 
	  end 
	end 
end

# d. Add a key to every student in the students array called 'semester' and assign it the value 'Summer'.

school.each do |key, value|
  if key == :students
    value.each do |stud|
      stud[:semester]="Summer"
    end
  end
end

# e. Change Steven's subject to 'being almost better than Blake'

school[:instructors].each do |instructor|
  if instructor[:name] == 'Steven'
    instructor[:subject] = 'being almost as awesome as blake'
  end
end

# f. Change Frank's grade from 'A' to 'F'.
school[:students].each do |student|
  if student[:name] == "Frank"
    student[:grade] = "F"
  end
end

# g. Return the name of the student with a 'B'.
school[:students].each do |student|
  if student[:grade] == "B"
    puts student[:name]
  end
end

# h. Return the subject of the instructor 'Jeff'.   

school[:instructors].each do |instructor|
  if instructor[:name] == "Jeff"
    puts instructor[:subject]
  end
end

#i. Write a statement to print out all the values in the school.

# school.each do |key, value|
#     if value.is_a? String
#       puts value

#       elsif value.is_a? Array
#         value.each do |x|
#           puts x[:name]
            
#             if x.include?(:subject)
#               puts x[:subject] 

#             elsif x.include?(:grade) && x.include?(:semester)
#               puts x[:grade] 
#               puts x[:semester]
#             end 
#       end 
#     end
# end 

# 4. Methods
# Note: You will need to pass the school variable to each of these methods 
# to include it in scope.

# a.   i. Create a method to return the grade of a student, given that student's name   

def get_grade(school, name)
  school[:students].each do |student|
      if name == student[:name]
      puts student[:grade]
    end
  end
end

puts "What is the name of the student whose grade you'd like to see?"
name = gets.chomp
  get_grade(school, name)

#ii. Then use it to refactor your work in 3.i.
puts
puts
puts
puts
def get_subject(school, instructor_name)
  school[:instructors].each do |instructor|
      if instructor_name == instructor[:name]
      puts instructor[:subject]
    end
  end
end

puts "What is the name of the instuctor whose subject you'd like to see?"
instructor_name = gets.chomp
  get_subject(school, instructor_name)

def get_school_info(school)
  school.each do |key, value|
    if value.is_a? String
      puts value
    end
  end
end

puts "Would like to know the name and locations of the school? Press Y for yes and 
N to exit"
choice = gets.chomp.capitalize

if choice == "Y"
get_school_info(school)
  
  elsif choice == "N"
    exit
  else 
    puts "Please entger a valid key, thanks!"
end

# b.   i. Create a method to udpate a instructor's subject 
  # given the instructor and the new subject.   
def change_subject(school, instructor_name2, new_subject)
 school[:instructors].each do |instructor|
      if instructor_name2 == instructor[:name]
      instructor[:subject].update(new_subject)
      puts "#{instructor_name2}'s subject has been updated to #{new_subject}"
      puts school
    end
  end
end

puts "Please enter an instructors name for whom you'd like to update subject"
instructor_name2 = gets.chomp
puts "Please enter a new subject for #{instructor_name2}"
new_subject = gets.chomp
change_subject(school, instructor_name2, new_subject)   

    #ii. Then use it to update Blake's subject to 'being terrible'.

# c.   i. Create a method to add a new student to the schools student array.   ii. Then use it to add yourself to the school students array.

# d.   i. Create a method that adds a new key at the top level of the school hash, given a key and a value.   ii. Then use it to add a 'Ranking' key with the value 1.

# 5. Object Orientation
# a. Create a bare bones class definition for a School class.

# b. Define an initialize method for the School class.   i. Give your School class the instance variables: name, location, ranking, students, instructors.     NOTE: These variables should be of the same type as they are in the hash above.   ii. Rewrite your initialize method definition to take a parameter for each instance variable.   iii. Initialize each instance variable with the value of the corresponding parameter.

# c. Create an attr_accessor for name, location, instructors, and students. Create an attr_reader for ranking.

# d. Create a method to set ranking, given a ranking value.

# e. Create a method to add a student to the school, given a name, a grade, and a semester.

# f. Create a method to remove a student from the school, given a name.

# g. Create an array constant SCHOOLS that stores all instances of your School class.

# h. Create a class method reset that will empty the SCHOOLS constant.

# 6. Classes
# a. Create a Student class.

# b. Refactor your School instance methods to treat Students as an array of objects instead of an array of hashes.

# c. Create a method in the School class that finds a student by name and returns the correct Student object.

# 7. Self
# For this section, please use the letters and answer each individually.

# Note: in cases where self is an instance of an object just note that as the object id printed to the screen is going to be different everytime

# a. What should this Class print to the screen when defined/loaded?

#   class Student

#     def self.say_hello
#       puts 'hello'
#     end

#     say_hello
#     puts self

#   end
# b. What should this Class print to the screen when defined/loaded?

#   class Student

#     def self.say_hello
#       puts self
#     end

#     say_hello

#   end
# c. What should this Class print to the screen when defined/loaded?

#   class Student

#     def initialize
#       puts self
#     end

#     new

#   end
# d. What should this code print to the screen when run?

#   class Student

#     def say_hello
#       puts self
#     end

#   end
# Student.new.say_hello

# e. What should this code print to the screen when run?

#   class Student

#     def say_hello
#       puts say_goodbye
#     end

#     def say_goodbye
#       'goodbye'
#     end

#   end
# Student.new.say_hello









