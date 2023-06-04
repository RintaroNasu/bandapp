# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Band.create!(name: "クリープハイプ")
# Band.create!(name: "backnumber")
# Band.create!(name: "優里")
# Band.create!(name: "nobelbright")
User.create!(name:  "那須凜太郎",
    email: "rintaro624528@au.com",
    password:  "123456",
    password_confirmation: "123456",
    admin: true)