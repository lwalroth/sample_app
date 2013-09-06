namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do  # ensure the Rake task has access to 
                                  #  the local rails environment
    admin = User.create!(name: "Example User",		# will raise exception for invalid user
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
		 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end


# This creates an example user with name and email replicating our previous
# one, and then makes 99 more
