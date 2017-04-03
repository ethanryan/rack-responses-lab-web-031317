class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    #The time is: 2017-04-03 10:23:31 -0400

    resp.write "The time is: #{time}\n"
    resp.write "The time is: #{time.hour}:#{time.min}\n"
    #The time is: 10:34

    if time.hour < 12
      resp.write 'Good Morning'
    else
      resp.write 'Good Afternoon'
    end

    resp.finish
  end

end
