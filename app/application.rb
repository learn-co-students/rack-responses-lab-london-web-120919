
class Application

    def call(env)
      resp = Rack::Response.new


        resp.write Time.now.hour < 12 ? 'morning' : 'afternoon'
   
   
      resp.finish
    end
  
  end