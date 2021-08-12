class UsersController < ApplicationController
  before_action :authenticate_user!, only: :new
  
  def index
    @foods = Food.all
    @hotels = Hotel.all
  end

  


end
