# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Emily Harvey"
  user.email                 "emilysemail@email.com"
  user.password              "maestro"
  user.password_confirmation "maestro"
end

Factory.define :sarah do |sarah|
  sarah.name                  "Emily Harvey"
  sarah.email                 "emilys2email@email.com"
  sarah.password              "maestro"
  sarah.password_confirmation "maestro"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end