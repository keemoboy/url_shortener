class CreateShortenUrls < ActiveRecord::Migration
  def change
    create_table :shorten_urls do |t|
      t.text :source_url
      t.integer :user_id
      t.timestamps
    end
  end
end
