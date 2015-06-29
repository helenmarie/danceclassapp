class DClassController < ApplicationController
  

  def show
    @dclass = DClass.find(params[:id])
  end

  def new
    @dclass = DClass.new
  end

  def create
    @dclass = DClass.new(dclass_params)
    if @dclass.save
      flash[:success] = "New class successfully added!"
      redirect_to @dclass
    else
      render 'new'
    end
  end

  def index
    @dclass = DClass.all
  end


  def list
  end
 
private
  def dclass_params
    params.require(:d_class).permit(:dancetype, :day, :location)
  end
end