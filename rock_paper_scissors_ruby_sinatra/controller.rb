require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'json' )
require_relative( './models/game' )


get '/welcome' do
  erb( :welcome )
end

get '/welcome/rock' do
  erb( :rock )
end

get '/welcome/paper' do
  erb( :paper )
end

get '/welcome/scissors' do
  erb( :scissors )
end

get '/welcome/:choice1/:choice2' do
  p1 = params[:choice1]
  p2 = params[:choice2]
  game_new = Game.new( p1, p2 ) 
  @result = game_new.play()
  erb( :result )
end

# get '/welcome/paper/:choice2' do
#   p1 = params[:choice1]
#   p2 = params[:choice2]
#   game_new = Game.new( p1, p2 ) 
#   @result = game_new.play()
#   erb( :result )
# end

# get '/welcome/scissors/:choice2' do
#   p1 = params[:choice1]
#   p2 = params[:choice2]
#   game_new = Game.new( p1, p2 ) 
#   @result = game_new.play()
#   erb( :result )
# end
