require 'will_paginate/array'

class AlbumsController < ApplicationController 
  before_action :set_album, only: [:show]

  def index
    @albums = Album.new.all.paginate(page: params[:page], per_page: 10)
    @users = Album.new.users
    @photos = Album.new.photos
    # api = Album.new()
    # @albums = api.albums
  end

  def show
    @users = Album.new.users
    @photos = Album.new.photos.select { |photo| photo["albumId"] == params[:id].to_i }.paginate(:page => params[:page], :per_page => 10)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      #binding.pry
      @album = Album.new.all.select { |album| album["id"] == params[:id].to_i }
    end
end