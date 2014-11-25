class StoreController < ApplicationController
	before_action :asynAction
	def index
		@products = Product.order(:title)
  	end
end
