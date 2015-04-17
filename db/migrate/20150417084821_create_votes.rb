class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes, id: :uuid, default: "uuid_generate_v1()"  do |t|
      t.uuid :candidate_id

      t.timestamps
    end
  end
end
