class Sti::Book < Sti::Product
  validates :author, presence: true

  def display_info
    super + ", Author: #{author}"
  end
end
