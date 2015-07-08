class ProductsController < ApplicationController
	def index
	end

	def create
		# 因為強參數(strong parameters)的關係，需要加上 permit
		clean_params = params.require(:product).permit(:name, :price)

		product = Product.new(clean_params)

		# 呼叫 save 方法 就會存進去
		product.save

		# 不管如何，先導到 index 去，路徑是 products_path
		redirect_to products_path
	end
end
