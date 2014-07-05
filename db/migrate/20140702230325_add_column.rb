class AddColumn < ActiveRecord::Migration
  def change
  	add_column :homelands, :project_id, :integer
  end
end
