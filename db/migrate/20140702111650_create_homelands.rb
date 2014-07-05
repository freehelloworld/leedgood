class CreateHomelands < ActiveRecord::Migration
  def change
    create_table :homelands do |t|
      t.string :name
      t.text :packagedes
      t.string :frontimg
      t.string :structimg
      t.integer :lot
      t.string :address
      t.decimal :size
      t.integer :bedroom
      t.integer :bathroom
      t.integer :garage
      t.decimal :price
      t.string :status
      t.string :note1
      t.string :note2
      t.string :note3

      t.timestamps
    end
  end
end
