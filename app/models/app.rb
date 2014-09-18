class App < ActiveRecord::Base
  has_many :app_tags
  has_many :tags, through: :app_tags
end
