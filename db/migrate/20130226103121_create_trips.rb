class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name,
      t.text :description,
      t.date :start_date,
      t.date :end_date,
      t.string :image_name,
      t.decimal :price, scale: 2, precision: 6
      t.string :tag_line

      t.timestamps
    end
  end
end
