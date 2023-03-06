class ActorsController < ApplicationController
  def play
   @list_of_actors = Actor.all
   render ({:template => "actor_templates/play.html.erb"})
  end
  def actor_details
  actor_id = params.fetch("actor_id")
  @the_actor = Actor.where({:id => actor_id}).at(0)
  @character = Character.where({ :actor_id => actor_id})
    
    render ({:template => "actor_templates/actor.html.erb"})
   end

end
