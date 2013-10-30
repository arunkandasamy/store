class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date
  field :_id, type: String, default: ->{ name.to_s.parameterize }

  attr_accessible :name, :price, :released_on

  validates :name, presence: true

  embeds_many :reviews
end
