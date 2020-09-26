class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :name, :price, :description, :id, :category_id, :category_name
  # belongs_to :category
end
