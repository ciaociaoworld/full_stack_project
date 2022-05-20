get '/login' do
    erb :'sessions/new'
end

post '/sessions' do
    email = params['email']
    password = params['password']

    user = find_user_by_email(email)
    if user && BCrypt::Password.new(user['password_digest']) == password
        # log the user in
        session['user_id'] = user['id']
        redirect '/'
end