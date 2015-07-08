FactoryGirl.define do
  # class 沒寫的話，會根據檔名猜是什麼 class
  factory :ruby_book, class: Product do
    name "Ruby Book"
    price 100
  end

  factory :php_book, class: Product do
    name "PHP Book"
    price 50
  end
end