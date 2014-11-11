class LinksController < ApplicationController

  before_action :authenticate_user!

  def index
    @links = Link.all
    @link = Link.new
  end

def create
    @link = Link.new(params.require(:link).permit(:url, :photo, :notes))
    if @link.save
      @links = Link.all
      @link = Link.new
    end
  end

end
