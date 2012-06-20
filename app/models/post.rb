class Post < ActiveRecord::Base
  attr_accessible :name, :text, :admin_id
  belongs_to :admin
end
