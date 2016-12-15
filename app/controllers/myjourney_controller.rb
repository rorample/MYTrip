class MyjourneyController < ApplicationController
  
  def index
    @journey= Myjourney.all
    @journey_pagi = @journey.paginate(:page => params[:page], :per_page => 4)
  end
  
  def show
    @journey= Myjourney.find(params[:id])
  end
  
  def new
=begin
    @journey= Myjourney.new
=end
  end
  
  def edit
    @journey= Myjourney.find(params[:id])
  end

  def create    
    @journey= Myjourney.new(journey_params)
    
    if @journey.save
      redirect_to @journey
    else
      render 'new'
    end
  end
  
  def update
    @journey= Myjourney.find(params[:id])
    
    if @journey.update(journey_params)
      redirect_to @journey
    else
      render 'edit'  
    end
  end
  
  def destroy
    @journey = Myjourney.find(params[:id])
    @journey.destroy
   
    redirect_to myjourney_path
  end
  
  
  private
  def journey_params
    params.require(:myjourney).permit(:journey_name,:imei_no,:start_latitude,:start_longitude,:remarks)
  end
  
end
