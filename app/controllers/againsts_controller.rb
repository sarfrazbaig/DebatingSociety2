class AgainstsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@against = @post.againsts.create(againsts_params)
		redirect_to post_path(@post)
  	end

  private
    def againsts_params
      params.require(:against).permit(:content)
    end
end
