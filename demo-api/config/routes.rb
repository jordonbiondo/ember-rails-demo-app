Rails.application.routes.draw do
  
    namespace :api do
      
      resources :blog_post_comments
      
      resources :blog_posts do
        member do
          get :comments
        end
      end
      
    end
end
