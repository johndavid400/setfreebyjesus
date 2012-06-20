class Post < ActiveRecord::Base
  attr_accessible :name, :text, :user_id
  belongs_to :user
end
