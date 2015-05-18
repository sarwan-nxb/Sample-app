class Author < ActiveRecord::Base
  has_many :posts

  def self.author_ids
    author = self.all.collect {|a| [a.name,a.id]}
    return author
  end
end
