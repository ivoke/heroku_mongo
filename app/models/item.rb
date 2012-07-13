class Item
  include Mongoid::Document
  field :content, type: String

  attr_accessible :content
end