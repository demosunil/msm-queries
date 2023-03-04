class MoviesController < ApplicationController
def film
  @list_of_movies = Movie.all
  render ({:template => "movie_templates/film.html.erb"})
 end


 def film_details
  #params look like {"movie_id" => "42"}
  the_id = params.fetch("movie_id")
  @the_film = Movie.where({ :id => the_id }).at(0)

  render({:template => "movie_templates/movie.html.erb"})
end
end
