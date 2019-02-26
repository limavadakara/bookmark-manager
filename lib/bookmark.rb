class Bookmark

  def all
    @bookmark_list = []

    if ENV['ENVIRON'] == 'test'
      @database = 'bookmark_manager_test'
    elsif ENV['ENVIRON'] == 'live'
      @database = 'bookmark_manager'
    end
    conn = PG.connect(dbname: @database)
    conn.exec("SELECT * FROM BOOKMARKS") do |result|

      result.each do |result_row|
        @bookmark_list << result_row['url']
      end
    end
    @bookmark_list
  end

end
