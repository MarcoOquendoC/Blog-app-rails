# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first = User.create(name: 'Tom', photo: 'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__340.jpg', bio: 'Teacher from Mexico.')