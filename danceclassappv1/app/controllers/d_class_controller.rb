class DClassController < ApplicationController
  

  def show
    @dclass = DClass.find(params[:id])
  end

  def new
    @dclass = DClass.new
  end

  def create
    @dclass = DClass.new(dclass_params)
    @dclass.save
    redirect_to @dclass
  end

  def index
  end
  


  def list
  end
 
private
  def dclass_params
    params.require(:d_class).permit(:dancetype, :day, :location)
  end
end