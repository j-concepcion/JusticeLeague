class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces, id: :uuid, default: "uuid_generate_v1()"  do |t|
      t.string :name

      t.timestamps
    end
  end
end
