class VenuesController < ApplicationController
  respond_to :xml, :json
  protect_from_forgery :only => [:update, :destroy] 

    def index
      respond_with(@venues = Venue.all)
    end

    def new
      respond_with(@venue = Venue.new)
    end

    def create
      respond_with(@venue = Venue.create(params[:venue]))
    end

    def edit
      respond_with(@venue = Venue.find(params[:id]))
    end

    def update
      @venue = Venue.find(params[:id])
      @venue.update_attributes(params[:venue])
      respond_with(@venue)
    end
  
end