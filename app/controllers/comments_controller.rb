class CommentsController < ApplicationController
	before_action :current_user
	def create
		# before create, @current_user (need to be a user in order to post comments)
		# Comment.create params[:comment]
		@comment = Comment.new(comment_params)
		@comment.save
		# url = @comment.place_title.gsub(" ", "%20")
		# redirect_to "/expanded/meal/#{url}"
		redirect_to :back
		# render json: params
  	end

  	def new
  		@comment = Comment.new
  	end

  	def edit
    	@comment = Comment.find params[:id]
  	end

  def show
    @comment = Comment.find params[:id]
    # render json: params
  end

  def update
    c = Comment.find params[:id]
    c.update comment_params
    # redirect_to  
  end


  private

 	def comment_params
    params.require(:comment).permit(:content, :place_title)
  end

end
