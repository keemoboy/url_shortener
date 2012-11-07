class CreateShortenUrls < ActiveRecord::Migration
  def change
    create_table :shorten_urls do |t|
      t.text :source_url

      t.timestamps
    end
  end
end
