class ImagesController < ApplicationController
	def index
		@images = Image.all
	end

	def new
		@image = Image.new
	end

	def show
		#params is a hash with a bunch  of ids
		@image = Image.find(params[:id])
	end

	def create
		@image = Image.create(params[:image].permit(:url))
		redirect_to :action => "show", :id =>@image._id
	end

	def destroy
		Image.find(params[:id]).destroy
		redirect_to images_url #access destroy and send back to the home screen w/ refresh
	end
end
