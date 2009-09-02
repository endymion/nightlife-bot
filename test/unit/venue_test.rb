require File.dirname(__FILE__) + '/../test_helper'

class VenueTest < ActiveSupport::TestCase
  should_validate_presence_of :name, :city, :state, :country, :address
end