class Author < ActiveRecord::Base
  validates :name

  has_many :articles, :dependent => :delete_all
end
