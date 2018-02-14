require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/student.rb')
require_relative('./models/house.rb')

# index
get "/hogwarts-students" do
  @students = Student.all()
  erb(:index)
end

# new
get "/hogwarts-students/new" do
  @houses = House.all()
  erb(:new)
end

# create
post "/hogwarts-students" do
  @student = Student.new(params)
  @student.save()
  redirect to "/hogwarts-students"
end
