class Api::CommentsController < ApplicationController
	
	before_action :set_post
	before_action :set_post_comment, only: [:show, :update, :destroy]

	def index
		render json: @post.comments, status: 200
	end

	def show
		render json: @comment, status: 200
	end

	def create
		@comment = @post.comments.create!(comment_params)
		render json: @comment, status: 201
	end

	def update
		@comment.update(comment_params)
		render json: @comment, status: 200
	end

	def destroy
		@comment.destroy
		head :no_content
	end

	private

		def comment_params
			params.require(:comment).permit(:content)
		end

		def set_post
			@post = Post.find(params[:post_id])
		end

		def set_post_comment
			@comment = @post.comments.find_by!(id: params[:id]) if @post
		end
end