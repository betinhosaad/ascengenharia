Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :obras do
    get 'obra_documents/index', :path => 'docs', :as => 'docs'
    get 'obra_boletos/index', :path => 'boletos', :as => 'boletos'
    get 'acompanhamento/index', :path => 'acompanhamento', :as => 'acompanhamento'
    resources :galeria
    resources :reports
  end
    devise_for :users 
    root 'plainpage#index'

end
