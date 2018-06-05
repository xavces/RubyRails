class CommentsController < ApplicationController
    before_action :authenticate_user!
  
    def create
      @episode = Episode.find(params[:episode_id])
      @new_comment = Comment.new(comment_params)
      @new_comment.episode = @episode
      @new_comment.user = current_user
  
      if @new_comment.valid?
        @new_comment.save!
        flash[:notice] = "Votre commentaire a été ajouté."
        redirect_to episode_path(@episode)
      else
        render "espisodes/show"
      end
    end
  
    private
    def comment_params
      params.require(:comment).permit(:text)
    end
  end