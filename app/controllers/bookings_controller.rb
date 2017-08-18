class BookingsController < ApplicationController
  before_action :set_service , only: [:new, :create]
  before_action :set_booking , only: [ :update ]

  def new
    @booking = Booking.new
  end

  def update
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def create
    start_time = DateTime.strptime(params[:booking][:date_start], "%m/%d/%Y %l:%M %p")
    @booking = Booking.new(booking_params)
    @booking.date_start = start_time
    @booking.user = current_user
    @booking.status = "pending"
    @booking.service = @service
    if @booking.save
      redirect_to dashboard_path
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

  def set_booking()
    @booking = Booking.find(params[:id])
  end
end
