class CarsController < ApplicationController  
 

 def index
  @cars = Car.all
 end
 def show
  @car = Car.find(params[:id])
end
 def new
   @car = Car.new
 end

 def create
   @car = Car.new(params_car )
   if @car.save
    puts "created"

    # render json: {message: 9"successful"}
    redirect_to root_path
   end
  end

   
 private 
  def params_car
    params.require(:car).permit(:name,:price)
  end
  

end
