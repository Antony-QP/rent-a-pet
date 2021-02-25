class BookingsController < ApplicationController

    def index
      @bookings = Booking.all
      @pets = Pet.all
      @my_bookings = current_user.bookings
      @my_pets_bookings = current_user.received_bookings
    end

    def new
      @booking = Booking.new
      @pet = Pet.find(params[:pet_id])
    end

    def create
      @booking = Booking.new(booking_params)
      @pet = Pet.find(params[:pet_id])
      @booking.user = current_user
      @booking.pet = @pet
      @booking.save
      redirect_to pets_path
    end

    def edit
      @booking = Booking.find(params[:id])

    end

    def update
    end

    private

    def booking_params
      params.require(:booking).permit(:start_date, :end_date)
    end
end
