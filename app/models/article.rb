class Article < ActiveRecord::Base
  # :id, :title, :content, :kb_number

  validates_uniqueness_of :kb_number

end
