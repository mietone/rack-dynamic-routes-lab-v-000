class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Reauest.new

    if req.path.match(/items/)
      item_name = req.path.split("/items").last
      item = @@items.find{|i| i.name == item_name}
    else
    end
  end
end
