class Category < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3, maximum: 25 }
    validates_uniqueness_of :name
  
    has_many :category_articles
    has_many :articles, through: :category_articles
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3, maximum: 10}
    
end