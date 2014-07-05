class CreateLanddivisions < ActiveRecord::Migration
  def change
    create_table :landdivisions do |t|
      t.integer :lot
      t.string :address
      t.decimal :size
      t.decimal :frontage
      t.decimal :price
      t.string :status
      t.integer :project_id

      t.timestamps
    end
  end
end
