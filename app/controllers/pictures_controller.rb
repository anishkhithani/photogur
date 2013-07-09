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
      render pictures_new_path
    end

  end



end
