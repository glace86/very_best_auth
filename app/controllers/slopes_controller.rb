class SlopesController < ApplicationController
  def index
    @slope = Slope.all
  end

  def show
    @slope = Slope.find(params[:id])
  end

  def new
    @slope = Slope.new
  end

  def create
    @slope = Slope.new
    @slope.name = params[:name]
    @slope.town = params[:town]
    @slope.state = params[:state]
    @slope.pic = params[:pic]

    @slope.save
     redirect_to "/slopes", :notice => "Slope created successfully."
    #else
     # render 'new'
    #end
  end

  def edit
    @slope = Slope.find(params[:id])
  end

  def update
    @slope = Slope.find(params[:id])

    @slope.name = params[:name]
    @slope.town = params[:town]
    @slope.state = params[:state]
    @slope.pic = params[:pic]
    @slope.pow_points = params[:pow_points]

    if @slope.save
      redirect_to "/slopes", :notice => "Slope updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @slope = Slope.find(params[:id])

    @slope.destroy

    redirect_to "/slopes", :notice => "Slope deleted."
  end
end
