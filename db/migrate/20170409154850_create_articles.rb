# Migrations are Ruby classes that are designed to make it simple to 
# create and modify database tables. Rails uses rake commands to run
# migrations, and it's possible to undo a migration after it's been
# applied to your database. 

# This migration creates a method named 'change' which will be called
# when you run this migration.

# When you run this migration it will create an 'articles' table with
# one string column and a text column. It also creates a timestamp 
# field to allow Rails to track article creation and update times. 

class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
