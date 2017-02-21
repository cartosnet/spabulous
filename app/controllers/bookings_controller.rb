class BookingsController < ApplicationController

    def new
      @booking= Booking.new
    end

    def show
    end

    def create
      @booking= Booking.new(booking_params)
    end

    private

    def booking_params
      params
      .require(:booking)
      .permit(:amount, :started_at, :endet_at, :petals, :massage_kit, :champagne)
    end

  end
