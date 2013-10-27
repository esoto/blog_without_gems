require 'csv'

class CSVManager
  attr_accessor :id

  def self.all
    posts = []
    CSV.read("lib/posts.csv").each do |post_attr|
      post  = Post.new(title: post_attr[1], post_body: post_attr[2])
      post.id = post_attr[0]
      posts << post
    end
    posts
  end

  def self.create post
    post.assign_id
    CSV.open("lib/posts.csv", "ab") do |csv|
      csv << [post.id, post.title, post.post_body]
    end
  end

  def assign_id
    if File.exist?("lib/posts.csv")
      id = CSV.read("lib/posts.csv").last[0].to_i + 1
      self.id = id
    else
      self.id = 1
    end
  end
end
