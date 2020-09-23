class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def five_recent_posts
    self.posts.order(created_at: :desc).limit(5)
  end

  def featured_post
    self.posts.max_by {|post| post.likes}
  end

  def average_age
    if self.bloggers.count > 0
        total_age = 0
        self.bloggers.uniq.each do |blogger|
            total_age += blogger.age
        end
          total_age / self.bloggers.uniq.count 
      else 
        "NO MO"
    end
  end

end
