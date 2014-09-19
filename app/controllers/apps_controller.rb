class AppsController < ApplicationController
  def index
    @apps = App.all
    @tags = Tag.all
  end
end
