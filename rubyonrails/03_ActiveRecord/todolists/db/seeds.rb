# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
TodoList.destroy_all
TodoItem.destroy_all
Profile.destroy_all

all_users = [             
 ["Carly", "Fiorina", "female", 1954], 
 ["Donald", "Trump", "male", 1946], 
 ["Ben", "Carson", "male", 1951],           
 ["Hillary", "Clinton", "female", 1947]     
]

all_users.each do |firstname, lastname, gender, dob|
	password = "#{lastname}123"
	User.create!(username: lastname, password_digest: password)
end


all_users.each do |firstname, lastname, gender, dob|
	userid = User.find_by!(username: lastname).id	
	Profile.create(gender: gender, birth_year: dob, first_name: firstname, last_name: lastname, user_id: userid)
  	#User.find_by!(username: lastname).create_profile(gender: gender, birth_year: dob, first_name: firstname, last_name: lastname)
  	due_date = Date.today + 1.year
  	TodoList.create(list_name: "A list for #{lastname}", list_due_date: due_date, user_id: userid)
end

all_users.each do |firstname, lastname, gender, dob|
  todolist = TodoList.find_by(list_name: "A list for #{lastname}")
  5.times do
  	due_d = Date.today + 1.year
    TodoItem.create(due_date: due_d, title: "Item of a list by #{lastname}", description: "Description blah blah blah", todo_list_id: todolist.id)
  end
end