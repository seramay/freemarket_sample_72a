class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string     :order_day,           null: false
      t.references :user,                null: false, foreign_key: true
      t.references :item,                null: false, foreign_key: true
      t.references :deliver_address,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
