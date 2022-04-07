class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'スキンケア' },
    { id: 2, name: 'ボディケア' },
    { id: 3, name: '電子機器' },
    { id: 4, name: 'メイクアップ' },
    { id: 5, name: '本' },
    { id: 6, name: 'バスグッズ' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :prototypes
end
