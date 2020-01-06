    class Application
     
      def call(env)
        resp = Rack::Response.new
     
        t = Time.now
     
        if t.hour >= 12
            resp.write t.hour
          resp.write "Good Afternoon!"
        else
            resp.write t.hour
          resp.write "Good Morning!"
        end
     
        resp.finish
      end
     
    end