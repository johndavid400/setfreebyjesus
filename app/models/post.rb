class Post < ActiveRecord::Base
#  attr_accessible :name, :text, :admin_id, :created_at
  belongs_to :admin
  paginates_per 5
end
