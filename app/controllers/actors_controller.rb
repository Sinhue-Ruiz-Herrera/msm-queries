class ActorsController < ApplicationController

  def actors_index

    @list_of_actors = Actor.all


    
    render({ :template => "actor_templates/all_actors.html.erb"})

  end
end
  
