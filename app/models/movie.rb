class Movie < ActiveRecord::Base
  attr_accessible :title, :year
  validates :title,  :presence => true

  has_many :rentals
end
