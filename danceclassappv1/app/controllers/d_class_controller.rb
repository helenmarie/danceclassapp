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

  #def list
   # @dclass = DClass.search(params[:search])
    #render 'list'
  #end

  def list
    @dclass = DClass.search(params[:search])
    numclasses = @dclass.count
    if numclasses == 0
      flash[:failure] = "no classes found, please search again"
      redirect_to "/"
    else
      render 'list'
    end
  end

  def show
    @dclass = DClass.find(params[:id])
  end

  def index
    @dclass = DClass.all
  end

  

  
private

  def dclass_params
    params.require(:d_class).permit(:dancetype, :day, :location)
  end

end

