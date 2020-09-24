class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attribute :name
  has_many :items 
end
