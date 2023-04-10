class BlogPost < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
     
    scope :sorted, ->{order("publishedAt DESC, updated_at DESC")}
    scope :draft, ->{where(publishedAt: nil)}
    scope :published, ->{where("publishedAt <= ?",Time.current)}
    scope :scheduled, ->{where("publishedAt > ?",Time.current)}

    def draft?
        publishedAt.nil?
    end

    def published?
        publishedAt? && publishedAt <= Time.current
    end

    def scheduled?
        publishedAt? && publishedAt > Time.current
    end

end