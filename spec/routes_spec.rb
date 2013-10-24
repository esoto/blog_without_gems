require 'net/http'

STester.description Routes do
  STester.context "routes" do
    STester.it "root return 200 status" do
      response = get("/")
      response.code.should be_equal "200"
    end

    STester.it "have a route to get post" do
      response = get("/posts")
      response.code.should be_equal "200"
    end
  end
end

