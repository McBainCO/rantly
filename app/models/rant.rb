class Rant < ActiveRecord::Base
  belongs_to :user

  validates_length_of :content, :minimum => 140

end
