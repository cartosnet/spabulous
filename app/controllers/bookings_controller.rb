class BookingsController < ApplicationController

    def index
      @bookings = current_user.bookings
      @flats = current_user.flats
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
        # entrance time is 12h, exit time is 17h
        entrance_time = "T12:00:00+00:00"
        exit_time = "T17:00:00+00:00"
        exit_day = date

      elsif @booking.time_slot == "Nuit"
        # entrance time is 19h, exit time is 10h
        entrance_time = "T19:00:00+00:00"
        exit_time = "T10:00:00+00:00"
        exit_day = date.tomorrow

      else
        #TODO : Show error message "vous devez choisir entre reserver pour la journée ou la nuit"
      end


      # generate a date_time started_at and ended_at

      entrance = DateTime.parse(date.to_s + entrance_time.to_s)
      exit = DateTime.parse(exit_day.to_s + exit_time.to_s)

      @booking.started_at = entrance
      @booking.ended_at = exit


      if @booking.save
        BookingMailer.creation_confirmation(@booking).deliver_now
        redirect_to flat_booking_path(@booking.flat_id, @booking)
      else
        render :new
      end

    end

    private

    def booking_params
      params
      .require(:booking)
      .permit(:flat_id, :amount, :started_at, :ended_at, :petals, :massage_kit, :champagne, :reservation_date, :time_slot)
    end

  end
