class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, counter_cache: :commentsCounter

  def comments_updater(value)
    post.update(commentsCounter: value)
  end
end
