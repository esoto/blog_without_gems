STester.description CSVManager do
  STester.context "#all" do
    STester.it "get all post" do
      posts = CSVManager.all_post
      posts.count.should be_equal 3
    end
  end
end
