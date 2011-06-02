module UsersHelper
  def email_address(user)
    user.email
  end
  
  def gravatar_for(user, options = { :size => 50 })
    gravatar_image_tag(email_address(user).downcase, :alt => user.name,
                                            :class => 'gravatar',
                                            :gravatar => options)
  end
end
