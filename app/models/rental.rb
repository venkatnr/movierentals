class Rental < ActiveRecord::Base
  attr_accessible :given_on, :movie_id, :taking_on
  belongs_to :movie
end
