class MoviesController < ApplicationController

  def index_movies

    #movie_id = params.fetch("an_id")
    @list_of_all_movies = Movie.all



      render({ :template => "movie_templates/all_movies.html.erb"})
  end

 def movie_details
    #params looks like ("an_id" => "42")

    
    
    #@the_movies = Movie.all
  

   # render({ :template => "movie_templates/all_movies.html.erb"})
  #end
 end
end
