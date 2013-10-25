STester.description CSVManager do
  STester.context "#all" do
    STester.it "get all post" do
      posts = Post.all
      posts.count.should be_equal 1
    end
  end

  STester.context "#create" do
    STester.it "create a new post" do
      new_post = Post.new(title: "This is a new post", post_body: "This is the body")
      Post.create new_post
      posts = Post.all
      posts.first.title.should be_equal "This is a new post"
    end
  end
end
