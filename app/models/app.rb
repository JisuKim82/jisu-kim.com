class App < ActiveRecord::Base
  has_many :app_tags
  has_many :tags, through: :app_tags

  scope :filter, ->(name){joins(:tags).where('tags.name = ?', name) if name.present? && name != 'Show All'}

end
