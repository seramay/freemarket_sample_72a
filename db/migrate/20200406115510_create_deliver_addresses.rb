class CreateDeliverAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :deliver_addresses do |t|
      t.string :first_name,           null: false
      t.string :last_name,            null: false
      t.string :first_name_reading,   null: false
      t.string :last_name_reading,    null: false
      t.integer :post_code,           null: false
      t.references :prefecture_id,    null: false
      t.string :address_city,         null: false
      t.string :address_street,       null: false
      t.string :address_building
      t.integer :phone_number
      t.references :user,             null: false, foreign_key: true

      t.timestamps
    end
  end
end
