class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--------' },
    { id: 2, name: 'スキンケア' },
    { id: 3, name: 'ボディケア' },
    { id: 4, name: '電子機器' },
    { id: 5, name: 'メイクアップ' },
    { id: 6, name: '本' },
    { id: 7, name: 'バスグッズ' },
    { id: 8, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :prototypes

end
