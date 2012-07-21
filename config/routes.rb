ActionController::Routing::Routes.draw do |map|
  map.resources :oauth_clients

  map.test_request '/oauth/test_request', :controller => 'oauth', :action => 'test_request'
  map.token '/oauth/token', :controller => 'oauth', :action => 'token'
  map.access_token '/oauth/access_token', :controller => 'oauth', :action => 'access_token'
  map.request_token '/oauth/request_token', :controller => 'oauth', :action => 'request_token'
  map.authorize '/oauth/authorize', :controller => 'oauth', :action => 'authorize'
  map.oauth '/oauth', :controller => 'oauth', :action => 'index'

  map.namespace :api do |api|
    api.namespace :v1 do |v1|
      v1.connect "/data.:format", :controller => "data", :action => "show"
    end
  end

#  map.root :controller => "home"
  map.root :controller => "oauth_clients", :action => "index"
  map.devise_for :users

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
