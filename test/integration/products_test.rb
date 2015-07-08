require 'test_helper'

class ProductsTest < ActionDispatch::IntegrationTest

	def setup
		@book = create(:php_book)
	end

	test "can add product successfully" do

		count1 = Product.count

		post '/products', product: {name:@book.name, price:@book.price}
		assert_redirected_to '/products' # 期望會轉址到 /products
		assert_equal count1+1, Product.count # 期望做完某些事情之後，總數等於原本的 + 1
	end

	# 期望欄位不足，不會成功寫入
	test "can not add product successfully" do
		count1 = Product.count
		post '/products', product: {name:'', price:100}
		assert_redirected_to '/products' 
		assert_equal count1, Product.count 
	end
end
