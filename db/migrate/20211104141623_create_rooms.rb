class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.integer :price
      t.string :area
      t.text :comment
      t.string :image

      t.timestamps
    end
  end
end
