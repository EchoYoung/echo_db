namespace :db do
    desc "Fill database with sample data"
    task populate: :environment do
        admin = User.create!(name: "Example User",
                            email: "abc@gmail.com",
                            password: "foobar",
                            password_confirmation: "foobar",
                            dob: "1990-09-12",
                            gender: "M",
                            admin: true)
        99.times do |n|
            name = Faker::Name.name
            email = "abc-#{n+1}@gmail.com"
            password = "password"
            dob = "1990-09-12"
            gender = "M"
            User.create!(name: name,
                         email: email,
                         password: password,
                         password_confirmation: password,
                         dob: dob,
                         gender: gender)
        end
        users = User.all(limit:10) do
            users.each { |user| user.biometrics.create!(height: 170+{n+1},
                                                        weight: 150+{n+1}) }
        end
    end
end
                         