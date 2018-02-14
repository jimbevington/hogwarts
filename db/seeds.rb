require('pry')

require_relative('../models/student.rb')
require_relative('../models/house.rb')

House.delete_all()
Student.delete_all()

student1 = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'house' => 'Gryffindor',
  'age' => 11
})

student2 = Student.new({
  'first_name' => 'Ron',
  'last_name' => 'Weasley',
  'house' => 'Gryffindor',
  'age' => 11
})

student3 = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'house' => 'Slytherin',
  'age' => 12
})

student4 = Student.new({
  'first_name' => 'Luna',
  'last_name' => 'Lovegood',
  'house' => 'Ravenclaw',
  'age' => 15
})

student5 = Student.new({
  'first_name' => 'Nymphadora',
  'last_name' => 'Tonks',
  'house' => 'Hufflepuff',
  'age' => 20
})

student1.save()
student2.save()
student3.save()
student4.save()
student5.save()

gryffindor = House.new({
  'name' => 'Gryffindor',
  'url' => 'https://goo.gl/zM6J72'
})

ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'url' => 'https://goo.gl/kDrtv6'
})

hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'url' => 'https://goo.gl/mjKXL1'
})

slytherin = House.new({
  'name' => 'Slytherin',
  'url' => 'https://goo.gl/SC6zjf'
})

gryffindor.save()
ravenclaw.save()
hufflepuff.save()
slytherin.save()

binding.pry
nil
