require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '127.0.0.1:8560'
device :sphero, :driver => :sphero

work do
  every(1.seconds) do
    sphero.set_color(rand(255), rand(255), rand(255))
  end
end

