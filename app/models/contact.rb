class Contact < MailForm::Base
  # attribute :name,      :validate => false
  attribute :name,      :validate => true
  attribute :lastname,      :validate => false
  attribute :phone      
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject      
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Welcome to Banktel",
      :to => "info@banktel.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
