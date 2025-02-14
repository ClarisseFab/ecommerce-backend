class Api::V1::OrdersController < ApplicationController
  acts_as_token_authentication_handler_for User
  skip_before_action :verify_authenticity_token

  def index
    @orders = Order.all
  end

  def create
    order = Order.new(order_params)
    order.user = current_user
    # authorize @wishlist
    if order.save!
      render :index, status: :created
    else
      render_error
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :total_price, :date)
  end

  def render_error
    render json: { errors: shopping_cart.errors.full_messages },
           status: :unprocessable_entity
  end
end
