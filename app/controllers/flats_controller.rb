class FlatsController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

    def index
      @flats = Flat.all
    end

    def show
      @flat = Flat.find(params[:id])
    end

    def new
      @flat = Flat.new
    end

    def create
      @flat = Flat.new(flat_params)
      if @flat.save
        redirect_to flat_path(@flat)
      else
        render :new
      end
    end

    def edit
      @flat = Flat.create(flat_params)
      redirect_to flat_path(@flat)
    end

    def update
      @flat = Flat.find(params[:id])
      if @flat.update(flat_params)
        redirect_to flat_path(@flat)
      else
       render :edit
      end
    end

    def delete
      @flat = Flat.find(params[:id])
      @flat.destroy
      redirect_to flats_path
    end

    private

    def flat_params

      params
      .require(:flats)
      .permit(:name, :description, :price_day, :price_night, :petals, :massage_kit, :champagne, :instructions, :photo_1, :photo_2, :photo_3)
    end

  end
