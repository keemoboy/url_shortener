class ShortenUrl < ActiveRecord::Base
  before_save :add_http
  before_update :add_http

  attr_accessible :source_url

  has_many :redirects
  belongs_to :user

  def create_redirect
    self.redirects.create
  end

  def times_visited
    self.redirects.count
  end

  private

  def add_http
    self.source_url.insert(0, "http://") unless self.source_url.include? "http://"
  end
end
