class CreateBarangays < ActiveRecord::Migration
  def change
    create_table :barangays do |t|
      t.string :name

      t.timestamps
    end
  end
end
