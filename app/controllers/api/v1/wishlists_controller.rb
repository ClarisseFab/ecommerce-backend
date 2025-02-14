class Api::V1::WishlistsController < ApplicationController
  acts_as_token_authentication_handler_for User
  skip_before_action :verify_authenticity_token

  def index
    @wishlists = Wishlist.all
  end

  def create
    wishlist = Wishlist.new(wishlist_params)
    wishlist.user = current_user
    # authorize @wishlist
    if wishlist.save!
      render :index, status: :created
    else
      render_error
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    @wishlists = Wishlist.all
    # Rails.logger.info(@wishlists)
    render :index
  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:id, :user_id, :product_id)
  end

  def render_error
    render json: { errors: shopping_cart.errors.full_messages },
           status: :unprocessable_entity
  end
end
