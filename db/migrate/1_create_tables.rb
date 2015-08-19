class CreateTables < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date   :birthday
      t.integer :age
      t.string :location
      t.string :website
      t.timestamps
    end

    create_table :posts do |t|
      t.string :username
      t.string :title
      t.string :description
      t.string :tags
      t.string :location
      t.timestamps
    end
    
    create_table :comments do |t|
      t.string :username
      t.string :comment
      t.timestamps
    end
 
    create_table :pins do |t|
      t.string :username
      t.string :tags
      t.timestamps
    end
      
    
  end

end