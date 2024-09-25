task(:howdy) do 
  pp "Hello!"
end

task(:world) do 
  pp "World!"
end

task(:sample_contacts => environment) do
  200.times do
    x = Contact.new
    x.first_name = Faker::Name.first_name
    x.last_name = Faker::Name.last_name
    x.save
  end

  x = Contact.new
  x.first_name = "Minnie"
  x.last_name = "Mouse"
  x.date_of_birth = "November 18, 1928"
  x.save

  x = Contact.new
  x.first_name = "Mickey"
  x.last_name = "Mouse"
  x.date_of_birth = "May 15, 1928"
  x.save
end
