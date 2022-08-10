class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show edit destroy]

  def index
    @flats = Flat.all
    @images = []
    10.times do
      @images << 'https://source.unsplash.com/random/?house'
    end
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flat_params)
    redirect_to flat_path(@flat)
  end

  def edit
  end

  def update
    @flat = Flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :number_of_guests, :price_per_night, :address)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
