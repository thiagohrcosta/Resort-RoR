class ServicesController < ApplicationController

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    authorize @service
    if @service.save
      redirect_to dashboard_services_path
    else
      render :new
    end
  end

  private

  def service_params
    params.require(:service).permit(
      :name,
      :price,
      :quantity,
      :description
    )
  end

end
