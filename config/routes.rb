Rails.application.routes.draw do
  #acesso
  acess = '/admin'

  devise_for :users

  get acess => 'disorder#index', as: :user_root

  get 'welcome/index'
  root 'welcome#index'
  get '/sobre' => 'welcome#info'
  get '/pesquisa' => 'welcome#search'
  get '/graficos' => 'welcome#graphics'
  get '/graficos/bases_externas' => 'welcome#external_base'
  get '/graficos/dsm' => 'welcome#dsm'
  post 'welcome' => 'welcome#create'


  #CRUD CATEGORIA
  get acess+'/categoria' => 'category#index'
  get acess+'/novaCategoria' => 'category#new'
  post acess+'/novaCategoria' => 'category#create'
  post acess+'/editCategoria' => 'category#edit'
  post acess+'/updateCategoria' => 'category#update'
  post acess+'/deleteCategoria' => 'category#delete'

  #CRUD SINTOMAS
  get acess+'/sintoma' => 'symptom#index'
  get acess+'/novoSintoma' => 'symptom#new'
  post acess+'/novoSintoma' => 'symptom#create'
  post acess+'/editSintoma' => 'symptom#edit'
  post acess+'/updateSintoma' => 'symptom#update'
  post acess+'/deleteSintoma' => 'symptom#delete'

  #CRUD TRANSTORNO NÃO SOLUCIONADO
  get acess+'/transtornoNaoSolucionado' => 'unresponsive_disorder#index'
  post acess+'/showTranstornoNaoSolucionado' => 'unresponsive_disorder#show'
  post acess+'/deleteTranstornoNaoSolucionado' => 'unresponsive_disorder#delete'

  #CRUD TRANSTORNOS
  get acess => 'disorder#index'
  get acess+'/novoTranstorno' => 'disorder#new'
  post acess+'/novoTranstorno' => 'disorder#create'
  post acess+'/editTranstorno' => 'disorder#edit'
  post acess+'/updateTranstorno' => 'disorder#update'
  post acess+'/deleteTranstorno' => 'disorder#delete'
  post acess+'/showTranstorno' => 'disorder#show'
  post acess+'/removeSintoma' => 'disorder#removeSintoma'
  post acess+'/assSintoma' => 'disorder#assSintoma'

  #CRUD GRAFICOS
  get acess+'/graficos' => 'external_base#index'
  get acess+'/novoGraficos' => 'external_base#new'
  post acess+'/novoGraficos' => 'external_base#create'
  post acess+'/editGraficos' => 'external_base#edit'
  post acess+'/updateGraficos' => 'external_base#update'
  post acess+'/deleteGraficos' => 'external_base#delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
