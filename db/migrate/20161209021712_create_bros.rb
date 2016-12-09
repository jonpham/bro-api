class CreateBros < ActiveRecord::Migration[5.0]
  def change
    create_table :bros do |t|

      t.timestamps
    end
  end
end
