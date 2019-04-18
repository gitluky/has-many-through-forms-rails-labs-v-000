class CommentsController < ApplicationController

  def create
    binding.pry
    comment = Comment.create(comment_params)
    # if comment.save
      redirect_to comment.post
    # else
    #   @post = Post.find(comment.post.id)
    #   @comment = comment
    #   render 'posts/show'
    # end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
