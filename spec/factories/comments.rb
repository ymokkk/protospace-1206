FactoryBot.define do
  factory :comment do
    content {'良いですね'}
    association :user
    association :prototype
  end
end
