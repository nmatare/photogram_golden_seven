class PhotosController < ApplicationController
  def index

    @list_of_photos = Photo.all

  end

  def show

  	@photo = Photo.find_by({ :id => params[:id] })

  	render('photos.html.erb')

  end

  def new_form

  	render("add.html.erb")

  end

  def edit_form

  	@photo = Photo.find_by({ :id => params[:id] })
  	render("edit.html.erb")

  end

  def create_row
  	p = Photo.new()
  	p.caption = params[:the_caption]
  	p.source = params[:the_source]
  	p.save

  	#render("create.html.erb")
  	redirect_to("http://localhost:3000")

  end

  def destroy
  	p = Photo.find_by({ :id => params[:id] })
  	p.destroy
  	p.save

  	redirect_to("http://localhost:3000")
  end

  def update_row

  	p.caption = params[:the_caption]
  	p.source = params[:the_source]
  	p.save
  	redirect_to("http://localhost:3000")

  end

end
