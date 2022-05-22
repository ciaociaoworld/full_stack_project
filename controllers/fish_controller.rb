get '/' do
    fish_post = all_content()
    comment_info = all_comment()

    erb :'fishes/index', locals: {
        fish_post: fish_post,
        comment_info: comment_info
    }
end

get '/fishes/new' do
    erb :'fishes/new'
end

post '/add_fish' do
    title = params['title']
    image_url = params['image_url']
    content = params['content']
    trade_location = params['trade_location']

    add_fish(title, image_url, content, trade_location)

    redirect '/'
end

get '/fishes/:id/edit' do
    id = params['id']

    fishes = edit_fish(id)

    erb :'fishes/edit', locals: {
        fishes: fishes
    }
end

put '/fishes/:id' do
    id = params['id']
    title = params['title']
    image_url = params['image_url']
    content = params['content']
    trade_location = params['trade_location']

    update_fish(id, title, image_url, content, trade_location)

    redirect '/'
end

delete '/fishes/:id' do
    id = params['id']

    delete_fish(id)

    redirect '/'
end
    






