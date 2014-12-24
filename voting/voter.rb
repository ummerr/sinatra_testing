require 'sinatra'

get '/' do
  @title = 'Voting App Live!'
  erb :index
end

post '/cast' do
  @title = 'Thanks for casting your vote'
  @vote = params['vote']
  erb :cast
end

get '/results' do
  @votes = { 'HAM' => 7, 'CUR' => 5}
  erb :results
end

Choices = {
  'HAM' => 'Hamburger',
  'PIZ' => 'Pizza',
  'CUR' => 'Curry',
  'NOO' => 'Noodles',
}