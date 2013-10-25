class Post < CSVManager
  attr_accessor :title, :post_body

  def initialize arg={}
    @title = arg[:title]
    @post_body = arg[:post_body]
  end
end
