require 'pg'

def clean_database
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec("DELETE FROM bookmarks")
end

def build_database
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.google.com')")
  conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.makersacademy.com')")
  conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.destroyallsoftware.com')")
end
