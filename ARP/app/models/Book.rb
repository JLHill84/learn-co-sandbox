Class Book < ActiveRecord::Base
 
  belongs_to :category
  belongs_to :author


end