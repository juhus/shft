class Project < ActiveRecord::Base
  attr_accessible :content, :icon, :title, :remove_icon
  mount_uploader :icon, IconUploader
end
