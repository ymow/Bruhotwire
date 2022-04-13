class Post < ApplicationRecord
  include Notificable
  belongs_to :user
  has_rich_text :body

  def user_ids
    # User.where.not(id: self.user_id).ids
    User.all.ids
  end
end
