class RenamePrefectureIdIdColumnToDeliverAddresses < ActiveRecord::Migration[5.2]
  def change
    rename_column :deliver_addresses, :prefecture_id_id, :prefecture_id
  end
end
