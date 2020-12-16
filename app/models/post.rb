class Post < ApplicationRecord
  has_many :comments, foreign_key: 'posts_id'

  after_create :publish

  def like!
    self.num_likes = num_likes.to_i + 1
    save!
    publish_like!
  end

  private

  def publish
    BasicSchema.subscriptions.trigger('postCreated',  # name of the sub
                                      {}, # arg
                                      { post: attributes }, # actual data being sent over
                                      scope: nil)
  end

  def publish_like!
    BasicSchema.subscriptions.trigger('postLiked',
                                      { id: id },
                                      { post: attributes },
                                      scope: nil)
  end
end
