class PlacesController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @places = pagy(Place.all, page: params[:page], items: 2)
  end

  def new
    @place = Place.new
  end

end
