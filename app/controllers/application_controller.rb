class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  	def current_cart
  		Cart.find(session[:cart_id])
  	rescue ActiveRecord::RecordNotFound
  		cart = Cart.create
  		session[:cart_id] = cart.id
      cart #this will get returned
  	end

    def get_menu
      @pLists = ProductList.all
      @pTypes = ProductType.all
    end

    def get_slider
      @imgs = Product.take(3)
    end

    def asynAction
      get_menu
      get_slider
    end
end
