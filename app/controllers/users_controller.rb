class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @foods = Food.where(user_id: current_user.id) 
    @hotels = Hotel.where(user_id: current_user.id)
  end
  
end
