Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    # added the comments thing
  	# This creates comments as a nested resource within articles. 
  	# This is another part of capturing the hierarchical relationship 
  	# that exists between articles and comments.
    resources :comments
  end
end
