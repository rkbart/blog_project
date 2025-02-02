class Post < ApplicationRecord
    has_many :comments, dependent: :destroy #realationship to comments. if post is deleted, comments are deleted
    validates :title, :body, presence: true
end
