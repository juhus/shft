class Project < ActiveRecord::Base
  attr_accessible :content, :icon, :title, :remove_icon
  mount_uploader :icon, IconUploader

  validates :slug, uniqueness: true, presence: true 
  					#exclusion: {in: %w[signup login]}

  before_validation :generate_slug

  default_scope order('created_at ASC')

  def to_param
  	slug
  end

  def generate_slug
  	self.slug ||= title.parameterize
  end
end
