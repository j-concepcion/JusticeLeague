class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid, default: "uuid_generate_v1()"  do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
