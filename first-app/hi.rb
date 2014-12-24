require 'sinatra'

get '/' do
  @test = 'blank'
  @test
end

# run by http://localhost:4567/

