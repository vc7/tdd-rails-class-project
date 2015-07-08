class ProductsController < ApplicationController
	def index
	end

	def create
		# 不管如何，先導到 index 去，路徑是 products_path
		redirect_to products_path
	end
end
