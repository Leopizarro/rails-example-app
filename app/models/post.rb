class Post < ApplicationRecord
    include Visible
    
    has_many :comments, dependent: :destroy
    
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 3 }
end
