require 'csv'

class CSVManager
  attr_accessor :id

  def self.all
    posts = read_post_file
    posts.map{|post_attr| set_up_posts(post_attr) }
  end

  def self.create post
    post.assign_id
    CSV.open("lib/posts.csv", "ab") do |csv|
      csv << [post.id, post.title, post.post_body]
    end
  end

  private

  def assign_id
    self.id = File.exist?("lib/posts.csv") ? (read_post_file.last[0].to_i + 1) : 1
  end

  def read_post_file
    CSV.read("lib/posts.csv")
  end

  def set_up_posts post_attr
    post  = Post.new(title: post_attr[1], post_body: post_attr[2])
    post.id = post_attr[0]
  end
end
