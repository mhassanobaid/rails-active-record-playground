class Sti::Clothing < Sti::Product
  validates :size, presence: true

  def display_info
    super + ", Size: #{size}"
  end
end
