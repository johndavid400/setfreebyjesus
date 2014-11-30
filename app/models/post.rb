class Post < ActiveRecord::Base
#  attr_accessible :name, :text, :admin_id, :created_at
  belongs_to :admin
  paginates_per 5

  def username
  end

  def created_at_time
    created_at.strftime("%D")
  rescue
    Date.today.strftime("%D")
  end

end
