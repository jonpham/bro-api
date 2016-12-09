class BrosController < ApplicationController
  
  def index
    @bros = Bro.all
  end

  def show
    @bro = Bro.find_by(id: params[:id])
  end

  def create
    @bro = Bro.create({name: params[:name],bio: params[:bio],fav_food: params[:fav_food], job: params[:job]})
    render :show
  end

  def update
    @bro = Bro.find_by(id: params[:id])
    @bro.assign_attributes({name: params[:name],bio: params[:bio],fav_food: params[:fav_food], job: params[:job]})
    @bro.save
    render :show
  end

  def destroy
    @bro = Bro.find_by(id: params[:id])
    @bro.destroy
    redirect_to :index
  end
end
