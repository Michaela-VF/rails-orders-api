class OrdersController < ApplicationController
  def index
    if params[:status]
      orders = Order.where[status: params[:status]]
    else
    orders = Order.all
    end
    render json: orders
  end

  def show
    order = Order.find(params[:id])

    if order
      render json: order
    else
      render json: { errors: "id not found" }, status: :not_found
    end
  end

  def create
    order = Order.new(order_params)
    if order.save
      render json: order, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:total, :status)
  end
end
