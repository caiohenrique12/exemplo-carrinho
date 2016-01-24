class LojaController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    @product = Product.find(params[:product_id])
    session[:carrinho] ||= []
    session[:carrinho] << OrderItem.new(product: @product, qtd: 1).attributes.except('id','order_id','created_at','updated_at')
    redirect_to loja_index_path
  end

  def new
    @order = Order.new
    session[:carrinho].each do |item|
      @order.order_items.build(item)
    end
    @order.save!
    session[:carrinho] = nil
    redirect_to loja_index_path
  end

  def destroy
  end
end
