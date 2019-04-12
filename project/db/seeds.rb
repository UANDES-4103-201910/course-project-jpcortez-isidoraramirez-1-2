# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sa1 = SuperAdmin.create(name: "SuperAdmin", password: "123456789", mail: "sa1@sa.cl")

a1 = Administrator.create(name: "admin1", password: "12345678", mail: "admin1@a.cl", geoference: "Tu casa bb", super_admin_id: 1)

d1 = Dumpster.create(super_admin_id: 1, administrator_id: 1)

b1 = Blacklist.create(super_admin_id: 1, administrator_id: 1)

u1 = User.create(mail: "user@mail.com", password: "password", blacklist_id: 1, super_admin_id: 1, administrator_id: 1)

p1 = Profile.create(bio: "Soy una biografia", country: "Pais", location:"Lugar", city:"Ciudad", picture:"imagen,jpg", user_id: 1)

w1= Wall.create(profile_id: 1)

po1 = Post.create(likes: 2, flags: 3, dislikes: 4, attachment: "adjuntos", title: "Soy un titulo", body: "Soy un cuerpo de texto", image: "SoyImagen.jpg", user_id: 1, dumpster_id: 1, super_admin_id: 1, administrator_id: 1, wall_id: 1)
