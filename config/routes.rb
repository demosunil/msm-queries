Rails.application.routes.draw do
  
  get("directors/eldest", { :controller => "directors", :action => "wisest" })
  get("directors/youngest", { :controller => "directors", :action => "young" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  
  get("/movies/:movie_id", { :controller => "movies", :action => "film_details" })
  get("/movies",{:controller => "movies", :action => "film"})

  
  
  
  
end
