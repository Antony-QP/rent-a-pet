class BookingsController < ApplicationController

    def index
      @bookings = Booking.all
    end
  
    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params)
      @pet = Pet.find(params[:pet_id])
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
      params.require(:booking).permit(:start_date, :end_date, :user_id, :pets_id)
    end
end
