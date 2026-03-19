class Sti::Product < ApplicationRecord
  validates :name, :price, presence: true

  def display_info
    "Product: #{name}, Price: #{price}"
  end
end
