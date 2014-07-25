require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  get '/new-game' do
  	erb :new_player
  end

  post '/register' do 
  	session[:player] = params[:name]
    load_play	
  end

  get '/register' do
    load_play 
  end

  post "/play" do
  	player = generate_player(params[:name])
  	computer = generate_computer
    generate_picks(player, computer, params[:pick])
  	@game = generate_game(player, computer)
  	erb :outcome
  end

  def load_play
    @player = session[:player]
    erb :play 
  end

  def generate_player(name)
    Player.new(name)
  end

  def generate_computer
    Computer.new
  end

  def generate_game(player, computer)
    Game.new(player, computer)
  end

  def generate_picks(player, computer, choice)
    player.picks = choice
    computer.autopick
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  
end
