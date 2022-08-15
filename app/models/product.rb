class Product < ApplicationRecord
    validates :title, :description, :image_url, presence: true
    validates :title, uniqueness: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}

    has_many :line_items
    before_destroy :not_referenced_by_any_line_item

    private
    def not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Item is present')
        throw :abort
      end
    end
end
