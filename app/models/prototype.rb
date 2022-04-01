class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :detail, presence: true
  validates :point, presence: true
  validates :image, presence: true
end
