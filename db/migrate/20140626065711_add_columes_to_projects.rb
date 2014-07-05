class AddColumesToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :address, :string
  	add_column :projects, :allotmentplan, :string
  	add_column :projects, :image2, :string
  	add_column :projects, :image3, :string
  	add_column :projects, :isonhome, :boolean
  	add_column :projects, :projecttype_id, :integer
  	add_column :projects, :note1, :string
  	add_column :projects, :note2, :string
  end
end
