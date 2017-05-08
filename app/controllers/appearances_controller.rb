class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    byebug
    @appearance = Appearance.create(episode_id: params[:episode][:id], guest_id: params[:guest][:id])
  end



end
