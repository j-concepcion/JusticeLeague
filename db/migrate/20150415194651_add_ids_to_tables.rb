class AddIdsToTables < ActiveRecord::Migration
  def change
  	add_column :users, :province_id, :uuid
  	add_column :cities, :province_id, :uuid
  	add_column :barangays, :province_id, :uuid
  	add_column :users, :city_id, :uuid
  	add_column :provinces, :city_id, :uuid
  	add_column :barangays, :city_id, :uuid
  	add_column :users, :barangay_id, :uuid
  	add_column :cities, :barangay_id, :uuid
  	add_column :provinces, :barangay_id, :uuid
  	add_column :provinces, :user_id, :uuid
  	add_column :cities, :user_id, :uuid
  	add_column :barangays, :user_id, :uuid
  end
end
