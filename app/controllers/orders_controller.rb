class OrdersController < ApplicationController

  def index
    @items = Item.where.not(id: 1)
  end
  
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    if @order.valid?
      @order.save
      redirect_to action: :create 
    else
      render :new
    end
  end


  def order_params
    params.require(:order).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :item_id, :postal_code, :prefecture_id, :city_word, :house_number, :building_name, :phone_number)
  end

end
