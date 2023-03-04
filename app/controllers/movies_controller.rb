class MoviesController < ApplicationController
def film
  @list_of_movies = Movie.all
  render ({:template => "movie_templates/film.html.erb"})
 end
end
=begin
 def movie_details
  #params look like {"an_id" => "42"}
  the_id = params.fetch("an_id")
  @the_movie= Movie.where({ :id => director_id }).at(0)
end
=end
def director_name
  #params look like {"director_id" => "42"}
  the_id = params.fetch("director_id")
  @director_name= Director.name where({ :id => the_id }).at(0)
  render({:template => "director_templates/show.html.erb"})
end
