class AlbumsController < ApplicationController 
  def index
    @albums = Album.albums
  end
end