class LikesController < ApplicationController
  def create
    like = Like.new(post_id: params[:post_id], user_id: current_user.id)
    like.save
    @post = like.post
    
    respond_to do |format|
      format.turbo_stream { render :create, post: @post  }
    end
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    @post = like.post
    
    respond_to do |format|
      format.turbo_stream { render :create, post: @post  }
    end
  end
end
