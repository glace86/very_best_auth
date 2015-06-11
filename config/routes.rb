Rails.application.routes.draw do

  devise_for :views
  devise_for :users

  #Route for landing page
  get "/landing", :controller => "landing", :action => "frontpage"


  # Routes for the slope (i.e. key resorts):
  # CREATE
  get "/slopes/new", :controller => "slopes", :action => "new"
  post "/create_slope", :controller => "slopes", :action => "create"

  # READ
  get "/slopes", :controller => "slopes", :action => "index"
  get "/slopes/:id", :controller => "slopes", :action => "show"

  # UPDATE
  get "/slopes/:id/edit", :controller => "slopes", :action => "edit"
  post "/update_slope/:id", :controller => "slopes", :action => "update"

  # DELETE
  get "/delete_slope/:id", :controller => "slopes", :action => "destroy"
  #------------------------------

  root "favorites#index"


  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------


  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for Dashboard (getting POW POINTS):
  get "dashboard/power", :controller => "dashboard", :action => "power"
  get "dashboard/powerup/:id", :controller => "dashboard", :action => "powerup"


end
