Rails.application.routes.draw do
  resources :users

  get '/contact', to: 'static_pages#contact' # 拿到 /contact 之後，幫我倒到 static_pages controller 的 contact 方法
  get '/help', to: 'static_pages#help'
end
