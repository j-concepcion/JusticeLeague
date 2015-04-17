class AddVoteIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vote_id, :uuid
  end
end
