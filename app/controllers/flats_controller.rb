class FlatsController < ApplicationController
  before_action :find_flat, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @flats = Flat.all
  end

  def show
  end

  private

  def find_flat
    @flat = Flat.find(params[:cocktail_id])
  end
end
