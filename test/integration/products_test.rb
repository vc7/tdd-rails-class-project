require 'test_helper'

class ProductsTest < ActionDispatch::IntegrationTest
	test "can add product successfully" do
		count1 = Product.count
		post '/products', product: {name:'ruby', price:100}
		assert_redirected_to '/products' # 期望會轉址到 /products
		assert_equal count1+1, Product.count # 期望做完某些事情之後，總數等於原本的 + 1
	end
end
