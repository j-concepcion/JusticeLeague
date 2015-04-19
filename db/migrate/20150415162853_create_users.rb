class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string :national_id_number
	  t.string :first_name
	  t.string :middle_name
	  t.string :last_name
    t.string :password
    t.string :password_confirmation
	  
      t.timestamps
    end
  end
end
