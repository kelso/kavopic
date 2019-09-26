# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admins
admins = [
  ['stefan.huska+admin@gmail.com', '123456']
]

admins.each do |email, password|
  u = Admin.where(
    email: email
  ).first_or_create!(
    password: password
  )
end

# Users

users = [
  ['stefan.huska+customer@gmail.com', '123456'],
  ['stefan.huska+operator@gmail.com', '123456'],
]

users.each do |email, password|
  u = User.where(
    email: email
  ).first_or_create!(
    password: password
  )
  u.confirm
end

# TransactionCategory

data = [
  ['+1 bod za kávu', 1],
  ['Uplatniť kávu zadarmo', -5]
]

data.each do |name, default_amount|
  TransactionCategory.where(
    name: name,
    default_amount: default_amount
  ).first_or_create!
end
