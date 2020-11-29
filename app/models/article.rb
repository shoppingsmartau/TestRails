class Article < ApplicationRecord
    belongs_to :user
    has_many :category_articles
    has_many :categories, through: :category_articles
    
    validates :title, presence: true, length: {minimum:3, maximum:100}
    validates :description, presence: true, length: {minimum: 3, maximum:300}
end
