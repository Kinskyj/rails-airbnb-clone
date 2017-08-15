class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @services = Service.all
  end

  def show
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
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :category, :location, :price, :years_experience, :photo, :photo_cache)
  end

end
