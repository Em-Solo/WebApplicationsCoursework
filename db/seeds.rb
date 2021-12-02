# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

welcome = Movie.where(title: 'Welcome').first
welcome.delete if welcome

movies = Movie.create([title:'Welcome', genre:'Comedy', runtime:999, watch_date:'01/12/2021', score:100])
