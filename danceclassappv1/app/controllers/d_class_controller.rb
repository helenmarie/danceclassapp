class DClassController < ApplicationController
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

  def list
    @dclass = DClass.search(params[:search])
          #if @dclass.dancetype =nil
    render 'list'
          #else
          #end
  end

  #def search
   # @dclass = DClass.search(params[:search])
  #end

  def show
    @dclass = DClass.find(params[:id])
  end

  def index
    @dclass = DClass.all
    #render 'list'
  end

  

  
private

  def dclass_params
    params.require(:d_class).permit(:dancetype, :day, :location)
  end

end

