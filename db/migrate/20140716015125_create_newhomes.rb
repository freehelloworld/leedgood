class CreateNewhomes < ActiveRecord::Migration
  def change
    create_table :newhomes do |t|
      t.string :name
      t.text :homedes
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
      t.integer :project_id
      t.string :note1
      t.string :note2
      t.string :note3

      t.timestamps
    end
  end
end
