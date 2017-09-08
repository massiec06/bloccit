module TopicsHelper
  def user_is_authorized_for_current_topics?
        current_user && current_user.admin?
  end

  def user_is_moderator?
        current_user.moderator?
  end

  def user_create_post?
        current_user && current_user.moderator?
  end
end
