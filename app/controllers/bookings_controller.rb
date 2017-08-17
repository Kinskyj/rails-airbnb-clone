class BookingsController < ApplicationController
  before_action :set_service

  def new
    @booking = Booking.new
  end

  def create
    start_time = DateTime.strptime(params[:booking][:date_start], "%m/%d/%Y %l:%M %p")
    @booking = Booking.new(booking_params)
    @booking.date_start = start_time
    @booking.user = current_user
    @booking.status = "pending"
    @booking.service = @service
    if @booking.save
      redirect_to service_path(@booking.service)
    else
      render :new
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:nb_hour, :status, :service_id)
  end

  def set_service()
    @service = Service.find(params[:service_id])
  end
end
