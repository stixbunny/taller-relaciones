class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    post = Post.find(params[:post_id])

    comment.post = post
    comment.save

    redirect_to post
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
