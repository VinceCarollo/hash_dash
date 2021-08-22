class Gear < Product
  after_initialize :init
  enum category: [:lighter, :pipe, :bowl, :papers, :nail, :torch, :bong, :apparel]

  def init
    self.contains_thc = false
  end
end