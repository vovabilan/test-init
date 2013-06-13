class Company < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true, :length => {:minimum => 2,
    :maximum => 250}
  validates :email, :presence => true
end
