class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @albums = User.new.albums.select { |album| album["userId"] == params[:id].to_i }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      #binding.pry
      @user = User.new.all.select { |user| user["id"] == params[:id].to_i }
    end
end
