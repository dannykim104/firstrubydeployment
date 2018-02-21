class DojosController < ApplicationController
  def index
    @dojos = Dojo.all 
  end

  def new
    render 'new'
  end

  def create
    Dojo.create( dojoparams )
    redirect_to '/'
  end 
  
  def display
      @dojo =  Dojo.find(params[:id])
      render 'show'
  end 

  def showedit
      @dojo = Dojo.find(params[:id])
      render 'edit' 
  end 

  def delete
    @dojo = Dojo.find(params[:id])
    @dojo.destroy
    redirect_to '/'
  end 

  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update( dojoparams )
    redirect_to '/'
  end 



  private 
  def dojoparams
   params.require(:dojo).permit(:branch, :street, :city, :state)
  end



end
