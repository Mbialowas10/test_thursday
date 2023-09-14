Rails.application.routes.draw do
  resources :beers
  # get 'companies/index'
  # get 'companies/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get         '/companies', to: 'companies#index', as: 'companies' # companies_path (Collection of companies)
  get         '/companies/:id', to: 'companies#show', as: 'company' # company_path (specific company)

  #   More Routes:
  # GET 	   /beers          =>	beers#index			(Load/display all beers)
  # GET 	   /beers/:id      =>	beers#show			(load/display 1 beer by id)/
  # GET 	   /beers/new      =>	beers#new  			(display a form to create a new beer)
  # POST 	   /bears          => beers#create 		(create a beer with POSTed data)
  # GET 	   /beers/:id/edit =>	beers#edit			(Display a form for editing a beer)
  # PATCH 	 /beers/:id 		 => beers#update 		(Update a beer with PATCHed data)
  # DELETE 	 /beers/:id 		 => beers#delete 		(delete a beer by ID)
end
