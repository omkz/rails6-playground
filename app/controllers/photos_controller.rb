class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(photo_params)
      flash[:success] = 'Photo edited!'
      redirect_to photos_path
    else
      render 'edit'
    end
  end
 
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
        flash[:success] = 'Photo added!'
        redirect_to photos_path
    else
        render 'new'
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :title)
  end
end