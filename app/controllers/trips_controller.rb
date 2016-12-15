class TripsController < ApplicationController
  
  def index
    @trip = Trip.all
    @trip_pagi = @trip.paginate(:page => params[:page], :per_page => 4)
#    @user = User.find(params[:id])
  end
  
  def show
    @trip = Trip.find(params[:id])
  end
  
  def new
    @trip = Trip.new
  end
  
  def edit
    @trip = Trip.find(params[:id])
  end
  
  def create
    @trip = Trip.new(trip_params)
    
    if @trip.save
      redirect_to @trip
    else
      render 'new'
    end
      
  end
  
  def edit
    @trip = Trip.find(params[:id])
  end
  
  def update
    @trip = Trip.find(params[:id])
    
    if @trip.update(trip_params)
      redirect_to @trip
    else
      render 'edit'
    end
  end
  
  
  
    
  private
    def trip_params
      params.require(:trip).permit(:journey_name,:imei_no,:start_latitude,:start_longitude,:stop_latitude,:stop_longitude,:avg_spd,:remarks)
    end
  
end
