class Person

  def initialize(name)
    @name = name
  end

  def greeting
    return "Hello, my name is #{@name}"
  end

end

class Student < Person

  def initialize(name)
    super
  end

  def learn
    return "I get it!"
  end

end

class Instructor < Person

  def initialize(name)
    super
  end

  def teach
    return "Everything in Ruby is an Object"
  end

end

nadia = Instructor.new('Nadia')
chris = Student.new('Chris')

puts nadia.greeting
puts chris.greeting

puts "Nadia says '#{nadia.teach}'"
puts "Chris says '#{chris.learn}'"

# puts nadia.learn
# learn is a instance method specific to the Student class
# while greeting is a class method which is why everyone could do it 
