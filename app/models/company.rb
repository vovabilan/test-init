class Company < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true, :length => {:minimum => 2,
    :maximum => 250}, uniqueness: true
  validates :email, :presence => true

  searchable do
    text :name, :boost => 5
    string :address, :phone
  end
end
