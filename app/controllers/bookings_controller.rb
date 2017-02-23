class BookingsController < ApplicationController

    def index
      @bookings = Booking.all
    end

    def new
      @current_flat = Flat.find(params[:flat_id])
      @booking= Booking.new(flat_id: @current_flat.id)
    end

    def show
      @flat = Flat.find(params[:flat_id])
      @booking = Booking.find(params[:id])
    end

    def create
      @booking= Booking.new(booking_params)
      @booking.user = current_user
      @booking.flat = Flat.find(params[:flat_id])

      # get the reservation_date

      date = Date.parse(@booking.reservation_date)

      # get the time_slot

      if @booking.time_slot == "Jour"
        time = "T12:00:00+00:00"
        fulldate = DateTime.parse(date.to_s+time.to_s)
      elsif @booking.time_slot == "Nuit"
        time = "T19:00:00+00:00"
        fulldate = DateTime.parse(date.to_s+time.to_s)
      else
        #TODO : Show error message "vous devez choisir entre reserver pour la journée ou la nuit"
      end

      # generate a date_time started_at and ended_at
      @booking.started_at = fulldate
      @booking.save
      redirect_to flat_booking_path(@booking.flat, @booking)
    end

    private

    def booking_params
      params
      .require(:booking)
      .permit(:amount, :started_at, :ended_at, :petals, :massage_kit, :champagne, :reservation_date, :time_slot)
    end

  end
