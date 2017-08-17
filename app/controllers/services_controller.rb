class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_service, only: [:show, :edit, :update]

  def index
    @services = Service.search(params[:search])
    @services_map = Service.search(params[:search]).where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@services_map) do |service, marker|
      marker.lat service.latitude
      marker.lng service.longitude
    end
  end

  def show
    @booking = Booking.new
    @bookings = @service.bookings
    @comment = Comment.new
    @comments = @service.comments.sort_by { |comment| comment.created_at }.reverse

    @hash = Gmaps4rails.build_markers(@service) do |service, marker|
      marker.lat service.latitude
      marker.lng service.longitude
    end
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user

    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :category, :location, :equipment, :food, :price, :years_experience, :photo, :photo_cache)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
