class AddParentsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name_father, :string
  	add_column :users, :middle_name_father, :string
  	add_column :users, :last_name_father, :string
  	add_column :users, :first_name_mother, :string
  	add_column :users, :middle_name_mother, :string
  	add_column :users, :last_name_mother, :string
  end
end
