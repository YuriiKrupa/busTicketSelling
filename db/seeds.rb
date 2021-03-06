# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.where(email: 'admin@admin.com').first_or_create! do |u|
  u.email ||= "admin@gmail.com"
  u.full_name ||= "Admin Adminow"
  u.password = "123qwe"
  #u.confirmed_at = DateTime.current
  u.is_admin = true
end

%w(booked bought used expired).each do |u| 
  TicketStatus.create(status:u)
end
