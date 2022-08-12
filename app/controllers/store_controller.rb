class StoreController < ApplicationController
  include CountView
  include CurrentCart
  before_action :times_user_accessed_store, only: :index
  before_action :set_cart

  def index
    @products = Product.order(:title)
    @count = session[:counter]
  end
end
