For domain model check out "Domain Model.xml"

To set up database follow the following steps:


## For produxtion database use:

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `psql` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
5. Run using 'rackup -p 4567' as it uses an environment variable to set database

<h3> For test database use: </h3>

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database using the `psql` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
5. Rspec automatically connects to this database

<h3> User Stories </h3>

As a user,
So that I can see all the bookmarks
I would like to see a list of bookmarks

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
