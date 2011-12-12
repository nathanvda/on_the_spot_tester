OnTheSpotTester::Application.routes.draw do

  get "home/about", :as => :about

  resources :posts do
    collection do
      put :update_attribute_on_the_spot
      get :get_attribute_on_the_spot
    end
  end

  root :to => "posts#index"

end
