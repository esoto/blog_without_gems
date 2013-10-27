require 'csv'

class CSVManager
  def self.all
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
