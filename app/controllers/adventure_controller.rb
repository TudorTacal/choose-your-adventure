class AdventureController < ApplicationController
  def index
    @city = params[:cities]
    @adventures = @city.adventures

  end
end
