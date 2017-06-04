# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhxBlog.Repo.insert!(%PhxBlog.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias PhxBlog.Accounts.User
alias PhxBlog.Articles.Post
alias PhxBlog.Repo

Repo.insert!(%User{name: "Raincal", avatar: Faker.Avatar.image_url, email: "raincal@gmail.com"})
Repo.insert!(%User{name: "Vampire", avatar: Faker.Avatar.image_url, email: "vampire@gmail.com"})
 
for _ <- 1..10 do
  Repo.insert!(%Post{
    title: Faker.Lorem.sentence,
    body: Faker.Lorem.paragraph,
    user_id: [1, 2] |> Enum.take_random(1) |> hd
  })
end