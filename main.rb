require 'sinatra'
require 'sinatra_generator'
require 'bcrypt'
require 'rerun'

# this makes the session hash work. Connect to seesion_controller's if statement
enable :sessions

# database
require './db/db'

# models
require './models/fish.rb'
require './models/search.rb'
require './models/user.rb'

# controllers
require './controllers/fish_controller.rb'
require './controllers/search_controller.rb'
require './controllers/session_controller.rb'
require './controllers/user_controller.rb'












