# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
images_dir = Rails.root.join("db/seed_images")

user1 = User.create(name: 'Pedro', email: 'pedro@test.com', password: 123456)
user2 = User.create(name: 'Ana', email: 'ana@test.com', password: 123456)
user3 = User.create(name: 'Karla', email: 'karla@test.com', password: 123456)
user4 = User.create(name: 'Breno', email: 'breno@test.com', password: 123456)
user5 = User.create(name: 'Jessica', email: 'jessica@test.com', password: 123456)

project = Project.create(title: 'Revista em quadrinho', description: 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s', target_value: 300.00, end_date: DateTime.new(2020,8,30), user: user1)

project.image_project.attach(io: File.open("#{images_dir}/project_1.jpg"), filename: 'project_1.jpg')

Supporter.create(user: user2, project: project, donated_amount: 100.00 )
Supporter.create(user: user3, project: project, donated_amount: 50.00 )