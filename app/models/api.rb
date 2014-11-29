class Api

  def self.get_posts(page_num = 1, active = true)
    while active do
      resp = RestClient.get 'http://www.setfreebyjesus.com/posts', {:params => {:format => "json", :page => page_num}}
      page_num += 1
      posts = JSON.parse(resp)
      active = false if posts.empty?
      posts.each do |post|
        unless Post.pluck(:id).include?(post["id"])
          Post.create(post)
        end
      end
    end
  rescue
  end

end
