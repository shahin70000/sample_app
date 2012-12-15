class MicropostsController < ApplicationController

	before_filter :signed_in_user, only: [:create, :destroy]

	def index
		
	end
	
	def create
		@micropost = current_user.microposts.build(params[:micropost])
		if @micropost.save
			flash[:success] = "Micropost created!"
			redirect_to root_url
		else
			@feed_items = current_user.feed.paginate(page: params[:page]) # was [] in the book, see "Listing 10.45" in "http://ruby.railstutorial.org/chapters/user-microposts#sec-a_proto_feed"
			render 'static_pages/home'
		end
	end

	def destroy
	end

end