class Article < ActiveRecord::Base
  validates :title

  belongs_to :author
end
