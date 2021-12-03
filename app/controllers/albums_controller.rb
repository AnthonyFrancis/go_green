class AlbumsController < ApplicationController 
  before_action :set_album, only: [:show]

  def index
    @albums = Album.new.all

    @users = Album.new.users

    # api = Album.new()
    # @albums = api.albums
  end

  def show

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      #binding.pry
      @album = Album.new.all.select { |album| album["id"] == params[:id].to_i }
    end
end