class ProductsController < ApplicationController
	def index
	end

	def create
		product = Product.new(params[:product])

		# 呼叫 save 方法 就會存進去
		product.save

		# 不管如何，先導到 index 去，路徑是 products_path
		redirect_to products_path
	end
end
