#/usr/local/bin/ruby
require 'sinatra'

set :bind, '0.0.0.0'

$count = 0
get '/' do
  $count+=1
  "hello - #{$count}"
end
