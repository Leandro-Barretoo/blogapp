class LikesController < ApplicationController
    def new; end

    def create
        @like = Like.create(author_id: params[:user_id], post_id: params[:post_id])
        if @like.save
            redirect_to user_post_path(params[:user_id], params[:post_id])
        end
    end
end
