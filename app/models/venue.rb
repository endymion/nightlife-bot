class Venue < ActiveRecord::Base
  validates_presence_of :name, :city, :state, :country, :address
end