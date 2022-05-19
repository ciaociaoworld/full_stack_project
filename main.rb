require 'sinatra'
require 'sinatra_generator'
require 'bcrypt'
require 'httparty'

# this makes the session hash work. Connect to seesion_controller's if statement
enable :sessions

# database
require './db/db'

# models
require './models/movie.rb'
require './models/search.rb'
require './models/user.rb'

# controllers
require './controllers/search_controller.rb'
require './controllers/movie_controller.rb'
require './controllers/session_controller.rb'
require './controllers/user_controller.rb'












