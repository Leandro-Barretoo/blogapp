class LikesController < ApplicationController
  def new; end

  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.new
    @like.author_id = params[:user_id]

    respond_to do |format|
      format.html { redirect_to user_post_path(params[:user_id], params[:post_id]) } if @like.save
    end
  end
end
