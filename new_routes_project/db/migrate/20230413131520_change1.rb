class Change1 < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email
    remove_column :users, :name 
    add_column :users, :username, :string, null:false, unique:true
  end
end
