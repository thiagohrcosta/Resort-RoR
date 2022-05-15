User.destroy_all

user_1 = User.create(
  email: 'admin@admin.com',
  password: '123456',
  password_confirmation: '123456',
  profile: 0
)
