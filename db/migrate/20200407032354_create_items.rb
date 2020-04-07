class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name,      null: false
      t.integer :price,     null: false
      t.string  :condition, null: false
      t.text    :description,  null: false
      t.string  :size,         null: false
      t.string  :ship_area,    null: false
      t.string  :ship_day,     null: false
      t.string  :ship_price,   null: false
      t.references :user,      null: false, foreign_key: true
      t.references :category,  null: false, foreign_key: true
      t.references :brand,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
