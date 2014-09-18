class AppTag < ActiveRecord::Base
  belongs_to :app
  belongs_to :tag
end
