Rails.application.routes.draw do
  namespace :api do
    get "/name" => 'games#query_params_action'
    get "/first_letter" => 'games#first_letter'
    get "/guessing" => 'game#guess'
    #get "/home/:wildcard" => 'params_examples#segmant_params_action'
  end 
end
