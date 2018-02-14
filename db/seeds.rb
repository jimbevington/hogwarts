require('pry')

require_relative('../models/student.rb')

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
  'url' => 'https://vignette.wikia.nocookie.net/harrypotter/images/9/96/Gryffindor_crest_by_tuliipiie-d491bqc.jpg/revision/latest?cb=20130508231701&format=original'
})

ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'url' => 'https://cdn1.bigcommerce.com/n-ou1isn/ydriczk/products/88363/images/91130/Harry-Potter-Ravenclaw-Crest-Official-wall-mounted-cardboard-cutout-buy-now-at-star__86173.1507640763.450.659.jpg?c=2'
})

hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'url' => ''
  })

binding.pry
nil
