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

b1 = Blacklist.create(super_admin_id: 1, administrator_id: 1, date: "09/01/2009 19:00")

u1 = User.create(mail: "user@mail.com",name: "Isidora usuario",  password: "password", blacklist_id: 1, super_admin_id: 1, administrator_id: 1)

p1 = Profile.create(bio: "Soy una biografia", country: "Pais", socation:"Lugar", city:"Ciudad", picture:"imagen,jpg", user_id: 1)

w1= Wall.create(profile_id: 1)

po1 = Post.create(title: "Soy un titulo", body: "Soy un cuerpo de texto", image: "SoyImagen.jpg", user_id: 1, dumpster_id: 1, super_admin_id: 1, administrator_id: 1, wall_id: 1)

l1 = Like.create(post_id: 1)

f1 = Flag.create(post_id: 1)

c1 = Comment.create(post_id: 1)

at1 = Attachment.create(post_id:1)
