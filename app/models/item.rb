class Item < ApplicationRecord
  belongs_to :category


  def category_name=(name)
    self.category = Category.find_or_create_by(name: name.downcase)
  end

  def category_name
    self.category.try(:name)
  end
  
end
