class Api::AlbumsController < ApplicationController 
  before_action :set_album 

  def index

  end

  def show
    # @photos = Album.new.photos.select { |photo| photo["albumId"] == params[:id].to_i }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
       @album = Album.new.all.select { |album| album["id"] == params[:id].to_i }
    end
end