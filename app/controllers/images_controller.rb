class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

	def create
    @image = Image.new(image_params)
		unless @image.save
			render "create"
		end
	end

	def show
		@image = Image.find(params[:id])
	end

  private
  def image_params
    params.require(:image).permit(:picture)
  end
end
