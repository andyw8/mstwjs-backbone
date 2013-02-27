class Trip < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :description
  attr_accessible :start_date
  attr_accessible :end_date
  attr_accessible :image_name
  attr_accessible :price
  attr_accessible :tag_line

  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :image_name, presence: true
  validates :price, presence: true
  validates :tag_line, presence: true
end
