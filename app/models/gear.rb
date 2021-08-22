class Gear < Product
  after_initialize :init
  enum category: [:lighter, :pipe, :bowl, :nail, :torch, :bong, :apparel]

  def init
    self.contains_thc = false
  end
end