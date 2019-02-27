require 'sinatra/base'
require  './lib/bookmark.rb'
require 'pg'

class BookmarkWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/add_bookmark' do
    Bookmark.add(params[:title],params[:url])
    redirect '/bookmarks'
  end
  get '/bookmarks' do


    @bookmark_list = Bookmark.all
    erb :bookmarks
  end

 run! if app_file == $0
end
