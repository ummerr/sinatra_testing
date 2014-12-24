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

Choices = {
  'HAM' => 'Hamburger',
  'PIZ' => 'Pizza',
  'CUR' => 'Curry',
  'NOO' => 'Noodles',
}