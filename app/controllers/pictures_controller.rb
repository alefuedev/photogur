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
	end

  def edit
  end

	def update
	end

	def destroy
	end
	
end
