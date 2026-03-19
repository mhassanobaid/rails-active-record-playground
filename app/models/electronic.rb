class Electronic < Product
  validates :warranty_months, presence: true

  def display_info
    super + ", Warranty months: #{warranty_months}"
  end
end
