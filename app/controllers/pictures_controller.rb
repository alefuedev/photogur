class PicturesController < ApplicationController
  def index
		@pictures = Picture.all
  end

  def show
		@picture = Picture.find(params[:id])
  end

  def new
		@picture = Picture.new					
  end

	def create
		@picture = Picture.new
		@picture.title = params[:picture][:title]
		@picture.artist = params[:picture][:artist]
		@picture.url = params[:picture][:url]
		if @picture.save
			 redirect_to pictures_path
		else
			render :new
		end
	end

  def edit
  end

	def update
	end

	def destroy
	end
	
end
