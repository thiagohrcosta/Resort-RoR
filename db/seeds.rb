require 'uri'

User.destroy_all
Room.destroy_all

user_1 = User.create(
  email: 'admin@admin.com',
  password: '123456',
  password_confirmation: '123456',
  profile: 0
)

room_1 = Room.create(
  quantity: 8,
  bed: 1,
  bathroom: 1,
  price: 499,
)
