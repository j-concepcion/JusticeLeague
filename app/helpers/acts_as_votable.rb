module ActsAsVotable
  class Vote < ::ActiveRecord::Base
    validates_uniqueness_of :user_id, scope: [:candidate_id],
      if: Proc.new { |vote| vote.votable_type == "Postion" && vote.voter_type == "User" }
  end
end