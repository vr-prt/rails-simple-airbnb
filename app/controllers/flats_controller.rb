class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    @images = []
    10.times do
      @images << 'https://source.unsplash.com/random/?house'
    end
  end
end
