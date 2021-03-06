Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Rails would match /museums to the nearby action of museums controller, and set params[:format] to "json".
  # API versioning
  namespace :api do
    namespace :v1 do
      get '/museums', to: 'museums#nearby', defaults: { format: 'json' }
    end
  end
end
