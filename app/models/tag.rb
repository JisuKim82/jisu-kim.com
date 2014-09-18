class Tag < ActiveRecord::Base
  has_many :app_tags
  has_many :apps, through: :app_tags
end
