FactoryBot.define do
  factory :user do
    email { 'test@com' }
    password { 't6t6t6' }
    password_confirmation { password }
    name { 'testtest' }
    profile { '美容が好きです' }
  end
end
