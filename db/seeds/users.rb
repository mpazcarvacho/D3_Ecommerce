User.destroy_all

User.create(
  email: "test@mail.com",
  password: "123456",
  password_confirmation: "123456",
)