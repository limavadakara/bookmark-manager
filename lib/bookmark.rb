class Bookmark
  def self.start
    @bookmark = Bookmark.new
  end

  def self.bookmark
    @bookmark
  end

  def initialize

        if ENV['ENVIRON'] == 'test'
          database = 'bookmark_manager_test'
        elsif ENV['ENVIRON'] == 'live'
          database = 'bookmark_manager'
        end
        @conn = PG.connect(dbname: database)
  end

  def add(title, url)
    @conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{url}')")
  end

  def all
    @bookmark_list = []

      @conn.exec("SELECT * FROM BOOKMARKS") do |result|
      result.each do |result_row|
        @bookmark_list << result_row['url']
      end
    end
    @bookmark_list
  end

end
