post '/create_comment/:name' do
    name = params['name']
    comment = params['comment']

    add_comment(name, comment)

    redirect '/'
end

delete '/delete_comment/:id' do
    id = params['id']

    delete_comment(id)
    
    redirect '/'
end