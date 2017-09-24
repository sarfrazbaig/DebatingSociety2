class ForsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@for = @post.fors.create(fors_params)
		redirect_to post_path(@post)
  	end

  private
    def fors_params
      params.require(:for).permit(:content)
    end

end
