class Listing < ActiveRecord::Base

  acts_as_taggable
  acts_as_taggable_on :wifi, :shower, :tv

  belongs_to :user
end
