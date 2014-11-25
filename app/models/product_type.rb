class ProductType < ActiveRecord::Base
	has_many :products
	belongs_to :product_list
end
