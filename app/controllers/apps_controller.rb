class AppsController < ApplicationController
  def index
    @apps = App.includes(:tags).filter(params[:filter])
    @tags = Tag.all
  end
end
