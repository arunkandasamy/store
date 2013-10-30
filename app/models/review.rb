class Review
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia
  field :content, type: String

  embedded_in :product
end
