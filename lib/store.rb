class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates_numericality_of :annual_revenue, :greater_than => 0

  validate :must_carry_either_apparel
 
  def must_carry_either_apparel
    if !womens_apparel && !mens_apparel
      errors.add(:mens_apparel, "Cannot both be false")
      errors.add(:womens_apparel, "Cannot both be false")
    end
  end
 
end
