class Redirect < ActiveRecord::Base
  attr_accessible :shorten_url_id

  belongs_to :shorten_url
end
