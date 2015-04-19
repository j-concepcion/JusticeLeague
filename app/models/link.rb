class Link < ActiveRecord::Base
  acts_as_votable

  def score
  	self.get_upvotes.size
  end
end
