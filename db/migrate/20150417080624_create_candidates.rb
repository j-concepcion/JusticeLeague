class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates, id: :uuid, default: "uuid_generate_v1()"  do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :position
      t.integer :age
      t.string :agenda
      t.string :achievements
      t.integer :votes_rendered

      t.timestamps
    end
  end
end
