class Bookmark
  def self.connection
    if ENV['ENVIRON'] == 'test'
      database = 'bookmark_manager_test'
    elsif ENV['ENVIRON'] == 'live'
      database = 'bookmark_manager'
    end
    @conn = PG.connect(dbname: database)
  end

  def self.add(title, url)
    connection
    @conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{url}', '#{title}')")
  end

  def self.all
    connection
    @bookmark_list = []

      @conn.exec("SELECT * FROM BOOKMARKS") do |result|
      result.each do |result_row|
        @bookmark_list << {:title => result_row['title'], :url => result_row['url'] }
      end
    end
    @bookmark_list
  end

end
