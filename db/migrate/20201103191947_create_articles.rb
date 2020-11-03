class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :numbers_of_characters
      t.string :duration
      t.text :text
      t.string :photo
      t.datetime :date
      t.string :author
      t.string :address

      t.timestamps
    end
  end
end
