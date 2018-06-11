class PhotosController < ApplicationController
  def show
    @photo=Photo.find(params['id'])
  end
  def new
    render ('new.html.erb')
  end
  def create
    photo = Photo.new
    photo.image_url = params['image_url']
    photo.caption = params ['caption']
  end
end
