class CreateTables < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
    
    create_table :comments do |t|
      t.string :description
      t.timestamps
    end
 
    create_table :pins do |t|
      t.string :image
      t.string :description
      t.timestamps
    end
      
    
  end

end