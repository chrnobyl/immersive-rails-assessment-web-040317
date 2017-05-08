class SessionsController < ApplicationController

  def new
    byebug

  end

  def create
    @session = Session.create(params[:user][:id])
  end

end
