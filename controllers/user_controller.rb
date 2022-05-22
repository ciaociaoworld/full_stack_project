get '/sign_up' do
    erb :'users/new'
end

post '/create_user' do
    name = params['name']
    email = params['email']
    phone = params['phone']
    suburb = params['suburb']
    image_url = params['image_url']
    password = params['password']

    create_user(name, email, phone, suburb, image_url, password)

    redirect '/'
end