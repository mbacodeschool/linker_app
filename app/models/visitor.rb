class Visitor < ActiveRecord::Base
  attr_accessible :email_address, :ip_address, :link_item_id, :referrer

  belongs_to :link_item

end
