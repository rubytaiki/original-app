class HotelsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_q, only: [:index, :search]

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
      if @hotel.save
        redirect_to controller: :users, action: :index
      else
        render :new
      end
  end

  def edit
    @hotel = Hotel.find(params[:id])
  end

  def update
    hotel = Hotel.find(params[:id])
    hotel.update(hotel_params)
    redirect_to controller: :users, action: :index
  end

  def destroy
    hotel = Hotel.find(params[:id])
    hotel.destroy
  end

  def index
    @hotels = Hotel.all
  end

  def search
    @results = @q.result
  end

  


  private
  def hotel_params
    params.require(:hotel).permit(:hotel_name, :address, :tagline, :google_url, :details, :location_id, :island_id, :price_range_id, :image).merge(user_id: current_user.id)
  end

  def set_q
    @q = Hotel.ransack(params[:q])
  end

end
