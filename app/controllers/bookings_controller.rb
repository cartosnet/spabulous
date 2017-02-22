class BookingsController < ApplicationController

    def new
      @current_flat = Flat.find(params[:flat_id])
      @booking= Booking.new(flat_id: @current_flat.id)
    end

    def show
    end

    def create
      @booking= Booking.new(booking_params)

      # TODO :
      # get the reservation_date
      puts "---------- RESERVATION DATE -------------"
      puts @booking.reservation_date
      puts "-----------------------------------------"

      # get the time_slot
      puts "-------------- TIME SLOT ----------------"
      puts @booking.time_slot
      puts "-----------------------------------------"

      # use it to generate a date_time started_at and ended_at
    end

    private

    def booking_params
      params
      .require(:booking)
      .permit(:amount, :started_at, :ended_at, :petals, :massage_kit, :champagne, :reservation_date, :time_slot)
    end

  end
