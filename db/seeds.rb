require 'uri'

User.destroy_all
Room.destroy_all
Service.destroy_all

user_1 = User.create(
  email: 'admin@admin.com',
  password: '123456',
  password_confirmation: '123456',
  profile: 0
)

room_1 = Room.create!(
  name: 'The Continental',
  quantity: 8,
  bed: 1,
  bathroom: 1,
  price: 899,
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id mattis augue, vitae mollis leo. Duis justo ante, vehicula et velit et, cursus lobortis est. Aliquam lacinia mattis ipsum, eu aliquet sem bibendum eu. Donec a accumsan ipsum. Ut et justo nisi. Maecenas metus enim, sagittis eget tempor id, malesuada et libero."
)

room_2 = Room.create!(
  name: 'The Presidential',
  quantity: 4,
  bed: 2,
  bathroom: 2,
  price: 1299,
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id mattis augue, vitae mollis leo. Duis justo ante, vehicula et velit et, cursus lobortis est. Aliquam lacinia mattis ipsum, eu aliquet sem bibendum eu. Donec a accumsan ipsum. Ut et justo nisi. Maecenas metus enim, sagittis eget tempor id, malesuada et libero."
)

service_1 = Service.create!(
  name: "Shampagne on Room",
  price: 129,
  quantity: 1,
  description: "Consectetur adipiscing elit. Nunc id mattis augue."
)

service_2 = Service.create!(
  name: "Breakfast at beach",
  price: 299,
  quantity: 1,
  description: "Consectetur adipiscing elit. Nunc id mattis augue."
)

service_2 = Service.create!(
  name: "Massage",
  price: 199,
  quantity: 1,
  description: "Consectetur adipiscing elit. Nunc id mattis augue."
)
