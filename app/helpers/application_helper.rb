module ApplicationHelper
  
  def user_avatar_url(size=40)
    return unless user_signed_in?
    "#{(request.ssl? ? 'https://secure' : 'http://www')}.gravatar.com/avatar/#{Digest::MD5.hexdigest current_user.email}?s=#{size}"
  end
  
end
