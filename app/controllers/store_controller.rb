class StoreController < ApplicationController
  include CountView
  before_action :times_user_accessed_store, only: :index

  def index
    @products = Product.order(:title)
    @count = session[:counter]
  end
end
