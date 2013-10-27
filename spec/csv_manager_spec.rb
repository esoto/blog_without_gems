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

    STester.it "assigns a new id" do
      new_post = Post.new(title: "This is a new post", post_body: "This is the body")
      Post.create new_post
      posts = Post.all
      posts.first.id.should_not be_nil
    end

    STester.context "#find" do
      STester.it "return the post with the request id" do
        posts = Post.all
        find_post = Post.find(posts.first.id)
        find_post.id.should be_equal posts.first.id
      end

      STester.it "return nil if the request id don't exist" do
        posts = Post.all
        find_post = Post.find(0)
        find_post.should be_nil
      end
    end

    STester.context "#delete" do
      STester.it "return the post with the request id" do
        posts = Post.all
        post_id = posts.first.id
        Post.delete(post_id)
        Post.find(post_id).should be_nil
      end
    end
  end
end
