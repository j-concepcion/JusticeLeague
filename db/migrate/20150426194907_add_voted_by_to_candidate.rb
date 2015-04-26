class AddVotedByToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :voted_by, :integer
  end
end
