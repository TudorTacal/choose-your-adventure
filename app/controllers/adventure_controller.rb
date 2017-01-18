class AdventureController < ApplicationController
  def index
    @adventure = Adventure.find_by(params[:id])
  end
end
