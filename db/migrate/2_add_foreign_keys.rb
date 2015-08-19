class AddForeignKeys < ActiveRecord::Migration
    def change
        change_table :pins do |t|
            t.references :user
        end
      
          change_table :pins do |t|
            t.references :comment
        end
    end
end