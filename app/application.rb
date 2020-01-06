class Application

  def call (cat)
  resp = Rack::Response.new

  time = Time.now.strftime('%H:%M')
  time_to_compare_against = "12:00"

  resp.write"#{time}"
  if time < time_to_compare_against
    resp.write"\n\nGood Morning!"
  else
    resp.write"\n\nGood Afternoon!"
  end

  resp.finish
  end

end