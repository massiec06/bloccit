module UsersHelper
  def has_posts_or_comments(user)
    ret = ""
    if user.posts.present?
      ret += "<h2>Posts</h2>"
      ret += "#{render user.posts}"
    else
      ret += "#{user.name} has not submitted any posts yet."
    end

    if user.comments.present?
      ret += "<h2>Comments</h2>"
      ret += "#{render user.comments}"
    else
      ret += "#{user.name} has not submitted any comments yet."
    end

    ret.html_safe
  end
end
