class PhotosController < ApplicationController
  def show
    @photo=Photo.find(params['id'])
  end
  def new
    render('new.html.erb')
  end
  def create
    photo = Photo.new
    photo.image_url = params['image_url']
    photo.caption = params['caption']
    photo.save
    redirect_to("/photos/#{@photo.id}")
  end
  def edit
    @photo=Photo.find(params['id'])
    render('edit.html.erb')
  end
  def update
     @photo=Photo.find(params['id'])
     @photo.image_url = params['the_image_url']
     @photo.caption = params['the_caption']
     @photo.save
    redirect_to("/photos/#{@photo.id}")
  end
  def index
    @photos = Photo.all
    render('index.html.erb')
  end
  def destroy
     @photo=Photo.find(params['id'])
     @photo.destroy
     redirect_to("/")
  end
end
