class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :detail, null: false
      t.text :point, null: false
      t.integer :category_id, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
