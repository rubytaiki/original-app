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
      pay_item
      @order.save
    else
      render :new
    end
  end


  private
  def order_params
    params.require(:order).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :item_id, :postal_code, :prefecture_id, :city_word, :house_number, :building_name, :phone_number).merge(token: params[:token])
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
        amount: @order.item.price,
        card: order_params[:token],    
        currency: 'jpy'                
     )
  end


end
