class AddBroIdToTanktops < ActiveRecord::Migration[5.0]
  def change
    add_column :tanktops, :bro_id, :integer
  end
end
