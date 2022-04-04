class WelcomeController < ApplicationController
  before_action :get_parks, only: [:index]
  
  def index
    @parks if @parks.count >= 1
  end

  private 
    def get_parks 
      @parks = ParkFacade.parks_by_state(params[:state])
    end

end
