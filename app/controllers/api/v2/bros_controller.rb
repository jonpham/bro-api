class Api::V2::BrosController < ApplicationController
  
  def index
    @bros = Bro.all
  end

  def show
    @bro = Bro.find_by(id: params[:id])
    if !@bro
      render json: { message: "Data does not exist for id #{params[:id]}"}
    end
  end

  def create
    @bro = Bro.create({name: params[:name],bio: params[:bio],fav_food: params[:fav_food], job: params[:job]})
    render :show # Returns new JSON Data
  end

  def update
    @bro = Bro.find_by(id: params[:id])
    if !@bro
      render json: { message: "Data does not exist for id #{params[:id]}"}
    else
      @bro.assign_attributes({name: params[:name],bio: params[:bio],fav_food: params[:fav_food], job: params[:job]})
      @bro.save
      render :show
    end
  end

  def destroy
    @bro = Bro.find_by(id: params[:id])
    @bro.destroy if @bro
    redirect_to :index
  end
end
