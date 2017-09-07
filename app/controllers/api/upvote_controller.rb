class Api::UpvoteController < ApplicationController
  
  def create
  	@upvote = Upvote.new
  	@upvote.post = Post.find(params[:post_id])
  	if upvote.save
		render json: upvote
	else
		render json: { message: post.errors }, status:400
	end
  end

end
