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
    @picture = Picture.new(params[:picture])
    if @picture.save
      #if the save is successful, go to index.html.erb mainpage
      redirect_to pictures_path
    else
      #otherwise show the new form again so they can fill it out properly
      render :new
    end

  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(params[:picture])
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end

end
