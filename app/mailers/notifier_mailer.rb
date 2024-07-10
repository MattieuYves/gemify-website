class NotifierMailer < ApplicationMailer
  default to: "mattieu.yves@gemifydev.fr",
    from: "contact@gemifydev.fr"

  def simple_message(first_name, last_name, email, message)
    mail(
      "reply-to": email_address_with_name(email, "#{first_name} #{last_name}"),
      subject: "New contact form message",
      body: message
    )
  end
end