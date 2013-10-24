class PostsController < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(req, res)
    status, content_type, body = get_posts(req)

    res.status = status
    res['Content-Type'] = content_type
    res.body = body
  end

  def get_posts(request)
    html   = "<html><body>Posts:</body></html>"
    return 200, "text/html", html
  end
end
