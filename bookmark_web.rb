require 'sinatra/base'
require  './lib/bookmark.rb'
require 'pg'

class BookmarkWeb < Sinatra::Base

  get '/bookmarks' do

    conn = PG.connect(dbname: 'bookmark_manager')
    conn.exec("SELECT * FROM BOOKMARKS") do |result|
      result.each do |result_row|
        p result_row.values_at('id','url')
      end
    end
    @bookmark_list = Bookmark.new.all
    erb :bookmarks
  end

 run! if app_file == $0
end
