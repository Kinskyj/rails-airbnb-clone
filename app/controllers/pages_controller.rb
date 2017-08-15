class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
   @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

end
