class LinkItem < ActiveRecord::Base
  attr_accessible :needs_email, :original_url, :password, :short_name

  has_many :visitors

end
