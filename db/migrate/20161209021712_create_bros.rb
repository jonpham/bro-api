class CreateBros < ActiveRecord::Migration[5.0]
  def change
    create_table :bros do |t|
      t.string :name
      t.text :bio
      t.string :fav_food
      t.string :job
      t.timestamps
    end
  end
end
