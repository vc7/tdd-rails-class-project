Rails.application.routes.draw do
  resources :users

  get '/contact', to: 'static_pages#contact' # 拿到 /contact 之後，幫我倒到 static_pages controller 的 contact 方法
  get '/help', to: 'static_pages#help'
  
  # 原本可以這樣寫，不過不符合 rails 的設計
  # post '/products', to: 'products#create'
  # 改用 resources 這個方法可以幫忙展開八條路徑
  resources :products
end
