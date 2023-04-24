class MoviesController < ApplicationController

  def index_movies

    #movie_id = params.fetch("an_id")
    @list_of_all_movies = Movie.all



      render({ :template => "movie_templates/all_movies.html.erb"})
  end

 def movie_details
    #params looks like ("an_id" => "42")

   
   the_movie = params.fetch("an_id")
   @movie_details = Movie.where({ :id => the_movie }).at(0)

   the_id = params.fetch("an_id")
   @the_director = Director.where({ :id => the_id}).at(0)
   
   # @the_movies = Movie.all
   
    render({ :template => "movie_templates/movie_details.html.erb"})
  #end
 end
end
