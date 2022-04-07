class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  with_options presence: true do
    validates :content
    validates :prototype
    validates :user
  end
end
