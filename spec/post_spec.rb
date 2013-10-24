STester.description Post do
  STester.context "#new" do
    STester.it "build a new post" do
      post = Post.new
      post.should_not be_equal nil
    end
  end
end
