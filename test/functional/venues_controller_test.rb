require File.dirname(__FILE__) + '/../test_helper'


class VenuesControllerTest < ActionController::TestCase
  def test_get_to_index
    get :index
    assert_not_nil assigns(:venues)
    assert 0, assigns(:venues).size
  end
  
  def test_get_2_index_with_data
    Factory(:venue)
    get :index
    assert_equal assigns(:venues).size, 1
  end
  
  def test_to_new
    get :new
    assert_not_nil assigns(:venue)
  end
  
  def test_create
    post :create, :name => 'spacy', :address => '1234 ln', :state => 'FL', :city => 'Miami', :country => 'USA', :source => 'boty'
    assert_equal nil, flash[:error]
    assert_equal 1 , Venue.count
  end
  
  def test_edit
    Factory(:venue, :name => 'spacy')
    put :edit, :id => 1
    
    assert_not_nil assigns(:venue)
  end
  
  def test_edit_no_data
    assert_raise ActiveRecord::RecordNotFound do 
      #raise 'BOOM!'
      put :edit, :id => 1
    end
  end
  
  
end