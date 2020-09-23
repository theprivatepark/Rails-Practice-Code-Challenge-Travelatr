class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  def total_likes
    total = 0
    self.posts.each do |post|
      total += post.likes 
    end
    total
  end

  def featured_post
    self.posts.max_by {|post| post.likes}
    # self.posts.group_by {|post| post.likes}.max_by{|k,v| k}[1][0]
  end

  

end


# objects_array.sort! { |a, b|  a.attribute <=> b.attribute }