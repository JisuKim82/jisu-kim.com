class AppsController < ApplicationController
  def index
    @apps = App.filter(params[:filter])
    @tags = Tag.all
  end
end
