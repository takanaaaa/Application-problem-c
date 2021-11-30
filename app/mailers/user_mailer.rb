class UserMailer < ApplicationMailer
  def send_event_email(group_users, title, content)
    group_users = group_users
    @title = title
    mail bcc: group_users.pluck(:email), subject: title
    @content = content
  end
end
