class Furniture < Product
  validates :material, presence: true

  def display_info
    super + ", Material: #{material}"
  end
end
