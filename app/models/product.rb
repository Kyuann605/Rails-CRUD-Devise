class Product < ApplicationRecord
  belongs_to :category

  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]

  has_many :stocks
  has_many :order_products
  end
end
