require 'httparty'

get '/' do
    erb :'search/index'
end

get '/movie_details' do
    movie_name = params['movie_name']
    # movie_image = params['movie_image']
    # movie_desc = params['movie_desc']

    movie_details = HTTParty.get("https://omdbapi.com/?s=#{movie_name}&apikey=2f6435d9")

    erb :'/search/movie_details', locals: {
        # movie_name: movie_name,
        # movie_image: movie_image,
        # movie_desc: movie_desc,
        movie_details: movie_details
    }
end

get '/movie_info' do
    movie_name = params['movie_name'] 
    
    erb  :'/search/movie_info', locals: {
         movie_name: movie_name
     }
 end