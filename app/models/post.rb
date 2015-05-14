class Post < ActiveRecord::Base
  belongs_to :author
  scope :by_authors, lambda{|a_ids| joins(:author).where("posts.author_id in (?)", a_ids) if a_ids.present?}
end

