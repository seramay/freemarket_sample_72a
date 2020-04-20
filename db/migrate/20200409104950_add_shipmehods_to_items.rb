class AddShipmehodsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :ship_method, :string, null: false
  end
end
