class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :name, :price, :description
end
