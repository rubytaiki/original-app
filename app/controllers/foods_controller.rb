class FoodsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to controller: :users, action: :index
    else
      render :new
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
    food.update(food_params)
    redirect_to controller: :users, action: :index
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
  end

  def index
    @foods = Food.all
  end

  def search
    @results = @q.result
  end

  private

  def food_params
    params.require(:food).permit(:store_name, :address, :tagline, :google_url, :details, :genre_id, :island_id, :opening_hour_id,
                                 :image).merge(user_id: current_user.id)
  end

  def set_q
    @q = Food.ransack(params[:q])
  end
end
