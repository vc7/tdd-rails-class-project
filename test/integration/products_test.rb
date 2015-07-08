require 'test_helper'

class ProductsTest < ActionDispatch::IntegrationTest
	test "can add product successfully" do
		# 現在直接從工廠女孩取資料
		# create 因為有在小幫手載入，所以不用從 FG 取
		# （待確認）放在 Product.count 會造成多算一個，所以拉到前面來
		book = create(:php_book)

		count1 = Product.count

		post '/products', product: {name:book.name, price:book.price}
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
