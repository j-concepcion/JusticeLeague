class AddAvatarToUsersAndCandidates < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :candidates, :avatar, :string
  end
end
