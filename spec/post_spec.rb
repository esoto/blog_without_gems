STester.description Post do
  STester.context "#new" do
    STester.it "build a new post" do
      post = Post.new
      post.should_not be_equal nil
    end

    STester.it "accepts attributes as title and post_body" do
      title = "this is the title"
      post_body = "this is the post body"
      post = Post.new(title: title, post_body: post_body)
      post.title.should be_equal title
      post.post_body.should be_equal post_body
    end
  end
end
