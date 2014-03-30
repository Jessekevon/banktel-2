class Contact < MailForm::Base
  attribute :firstname,      :validate => true
  attribute :lastname,      :validate => true
  attribute :phone      
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject      
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "thermixtape@gmail.com",
      :from => %("#{firstname}" <#{email}>)
    }
  end
end
