class Picture < ActiveRecord::Base
  attr_accessible :artist, :title, :url
  validates :artist, :presence => true
  validates :title, :presence => true
  validates :url, :presence => true
end
