class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard

  end

  def dashboard_rooms
    @rooms = Room.all
  end

  def dashboard_services
    @services = Service.all
  end
end
