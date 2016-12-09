class BrosController < ApplicationController
  
  def index
    @bros = Bro.all
  end

  def show
    @bro = Bro.find_by(id: params[:id])
  end
end
