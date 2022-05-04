class Prototype < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  belongs_to :user
  #has_many :favorites, dependent: :destroy
  #has_many :favorited_users, through: :favorites, source: :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :likes

  with_options presence: true do
    validates :title
    validates :detail
    validates :point
    validates :image
    validates :category_id
  end
end
