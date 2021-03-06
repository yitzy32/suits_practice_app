Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/suits" => "suits#index"
    post "/suits" => "suits#create"
    get "/suits/:id" => "suits#show"
    delete "/suits/:id" => "suits#destroy"
  end
end
