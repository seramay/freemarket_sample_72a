class ChangeDataPostCodeToDeliverAddresses < ActiveRecord::Migration[5.2]
  def change
    change_column :deliver_addresses, :post_code, :string
  end
end
