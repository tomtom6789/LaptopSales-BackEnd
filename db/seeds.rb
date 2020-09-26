# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hp = Category.create(name: 'hp')
dell = Category.create(name: 'dell')
macbook = Category.create(name: 'macbook')

Item.create([
    {name: 'Macbook Pro', price: 300,  description: 'looks like new', category: macbook},
    {name: 'Dell 850', price: 500, description: 'Old', category: dell},
    {name: 'HP 210', price: 900,  description: '2 months used', category: hp},
    {name: 'Macbook Air', price: 900,  description: 'like new', category: macbook},
    {name: 'Dell 900', price: 700, description: 'Old', category: dell},
    {name: 'HP 650', price: 400,  description: '2 months used', category: hp},
 
])