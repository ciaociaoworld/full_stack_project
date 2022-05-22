require 'sinatra'
require 'sinatra_generator'
require 'bcrypt'
require 'rerun'

# this makes the session hash work. Connect to session_controller's if statement
enable :sessions

# database
require './db/db'

# models
require './models/fish'
require './models/comment'
require './models/user'

# controllers
require './controllers/fish_controller'
require './controllers/comment_controller'
require './controllers/session_controller'
require './controllers/user_controller'

# helpers
require './helpers/sessions_helper'












