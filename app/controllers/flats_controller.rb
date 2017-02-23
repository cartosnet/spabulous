class FlatsController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

    def index
      @flats = Flat.near(params[:address], 10)
      @flats = Flat.where.not(latitude: nil, longitude: nil)
      @hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
        marker.lat flat.latitude
        marker.lng flat.longitude
        # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
    end

    def show
      @flat = Flat.find(params[:id])
      @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }
    end

    def new
      @flat = Flat.new
    end

    def create
      @flat = Flat.new(flat_params)
      @flat.user = current_user
      if @flat.save
        redirect_to flat_path(@flat), notice: 'Flat was successfully created.'
      else
        render :new
      end
    end

    def edit
      @flat = Flat.find(params[:id])
    end

    def update
      @flat = Flat.find(params[:id])
      if @flat.update(flat_params)
        redirect_to flat_path(@flat), notice: 'Flat was successfully created.'
      else
       render :edit
      end
    end

    def destroy
      @flat = Flat.find(params[:id])
      @flat.destroy
      redirect_to flats_path
    end

    private

    def flat_params

      params
      .require(:flat)
      .permit(:name, :address,:description, :price_day, :price_night, :petals, :massage_kit, :champagne, :instructions, photos: [])
    end

  end
