require 'sinatra'

set :bind, '0.0.0.0'

configure do
  set :id, SecureRandom.uuid
end

get '/' do
  "You hit #{settings.id}".strip
end
