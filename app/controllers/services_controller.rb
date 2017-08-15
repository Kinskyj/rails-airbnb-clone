class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @services = Service.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
