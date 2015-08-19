class AddColumnsToPins < ActiveRecord::Migration
  
  def change
    add_column :pins, :title, :string
    add_column :pins, :description, :string
    add_column :pins, :location, :string
  end
end
