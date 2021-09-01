class HomesController < ApplicationController
  before_action :move_to_index, only: [:users_sign_in]

  def index
  end

  def tushima
    render layout: false
  end

  def iki
    render layout: false
  end

  def access
  end
end
