class CreateTanktops < ActiveRecord::Migration[5.0]
  def change
    create_table :tanktops do |t|
      t.string :color
      t.string :size
      t.string :pattern

      t.timestamps
    end
  end
end
