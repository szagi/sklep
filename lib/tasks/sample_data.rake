namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = Customer.create!(login: "Admin",
    name:"Marcin",
    surname: "Iwanowski",
    birth_date: "13.08.1991",    
    email: "admin@projektsklep.org",
    email_confirmation: "admin@projektsklep.org",
    password: "admins",
    password_confirmation: "admins",
    country: "Polska",
    city: "Warszawa",
    street: "Herbsta 2",
    zip_code: "02-784",
    admin: true)
  end
end