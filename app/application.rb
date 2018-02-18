class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new

    if req.path.match(/items/)
        item_name = req.path.split("/items").last
        item = @@items.find{|i| i.name == item_name}
      if item
        resp.write item.price.to_s
      else
        resp.write "Item not found"
        resp.status = 404
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
end
