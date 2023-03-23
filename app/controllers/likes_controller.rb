class LikesController < ApplicationController
  before_action :prototype_params
  def create
   Like.create(user_id: current_user.id, prototype_id: params[:id])
   render 'create.js.erb'
  end

 def destroy
  Like.find_by(user_id: current_user.id, prototype_id: params[:id]).destroy
  render 'destroy.js.erb'
end
 
  
 private

 def prototype_params 
  @prototype = Prototype.find(params[:id])
 end

end
