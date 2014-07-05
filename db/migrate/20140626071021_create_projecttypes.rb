class CreateProjecttypes < ActiveRecord::Migration
  def change
    create_table :projecttypes do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :note1
      t.string :note2

      t.timestamps
    end
  end
end
