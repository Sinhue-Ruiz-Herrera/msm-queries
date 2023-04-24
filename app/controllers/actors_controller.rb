class ActorsController < ApplicationController

  def actors_index

    @list_of_actors = Actor.all


    
    render({ :template => "actor_templates/all_actors.html.erb"})

  end
  def actors_bio
   
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_id}).at(0)
  
    render({ :template => "actor_templates/actors_details.html.erb"})
  end
end
  
