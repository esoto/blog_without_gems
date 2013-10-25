require 'csv'

class CSVManager
  def self.all_posts
    posts = CSV.read("lib/posts.csv")
    posts.map{|posts_attr| Post.new(title: posts_attr[0])}
  end
end
