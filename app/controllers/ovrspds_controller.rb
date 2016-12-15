class OvrspdsController < ApplicationController
  
  def create
    @trip = Trip.find(params[:trip_id])
    @ovrspd = @trip.ovrspds.create(ovrspd_params)
    redirect_to trip_path(@trip)
  end
  
  private
    def ovrspd_params
      params.required(:ovrspd).permit(:over_speed,:ovrspd_latitude,:ovrspd_longitude)
    end
      
end
