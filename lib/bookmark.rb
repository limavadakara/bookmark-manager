class Bookmark

  def all
    @bookmark_list = []

    conn = PG.connect(dbname: 'bookmark_manager')
    conn.exec("SELECT * FROM BOOKMARKS") do |result|
  
      result.each do |result_row|
        @bookmark_list << result_row['url']
      end
    end
    @bookmark_list
  end

end
