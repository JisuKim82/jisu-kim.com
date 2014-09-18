class AppController < ApplicationController
  def index
    @apps = App.all
  end
end
