require 'sinatra/base'

class BookmarkWeb < Sinatra::Base
  $bookmarks = [{name: "Bookmark1"}, {name: "Bookmark2"}]
  get '/bookmarks' do
      @list = []
      $bookmarks.each do |bookmark|
        @list << bookmark[:name]
      end

    erb :bookmarks
  end

 run! if app_file == $0
end
