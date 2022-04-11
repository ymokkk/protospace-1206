class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :profile
  end

  has_many :prototypes
  has_many :comments
  #has_many :favorites, dependent: :destroy
  #has_many :favorited_prototypes, through: :favorites, source: :prototype

  #def already_favorited?(prototype)
    #favorites.exists?(prototype_id: prototype.id)
  #end
end
