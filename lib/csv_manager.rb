require 'csv'

class CSVManager
  def self.all
    posts = CSV.read("lib/posts.csv")
    posts.map{|posts_attr| Post.new(title: posts_attr[0])}
  end

  def self.create post
    CSV.open("lib/posts.csv", "ab") do |csv|
      csv << [post.title, post.post_body]
    end
  end
end
