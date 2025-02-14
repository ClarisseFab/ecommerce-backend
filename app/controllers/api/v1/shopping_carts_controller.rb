class Api::V1::ShoppingCartsController < ApplicationController
  acts_as_token_authentication_handler_for User
  skip_before_action :verify_authenticity_token

  def index
    @shopping_carts = ShoppingCart.all
    # render json: shopping_carts
  end

  # def show
  #   @shopping_cart = ShoppingCart.find(params[:id])
  #   render json: @shopping_cart
  # end

  def create
    shopping_cart = ShoppingCart.new(shopping_cart_params)
    shopping_cart.user = current_user
    # authorize @shopping_cart
    if shopping_cart.save!
      render :index, status: :created
    else
      render_error
    end
  end

  def destroy
    @shopping_cart = ShoppingCart.find(params[:id])
    @shopping_cart.destroy
    @shopping_carts = ShoppingCart.all
    render :index
  end

  private

  def shopping_cart_params
    params.require(:shopping_cart).permit(:id, :quantity, :user_id, :product_id)
  end

  def render_error
    render json: { errors: shopping_cart.errors.full_messages },
           status: :unprocessable_entity
  end
end
