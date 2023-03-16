# config/routes.rb
Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
end
