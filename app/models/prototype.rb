class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  with_options presence: true do
  validates :title
  validates :detail
  validates :point
  validates :image
  end
end
