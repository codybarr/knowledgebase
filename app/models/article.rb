class Article < ActiveRecord::Base
  # :id, :title, :content, 

  validates_uniqueness_of :kb_number

end
