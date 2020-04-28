class Contact < MailForm::Base

  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, :valitade => true
  attribute :nickname, :captcha => true

  def headers
    {
    :subject => "Mensagem",
    :to => "francisco.abecassis.gaivao@gmail.com",
    :from => %("#{name}" <#{email}>)
  }

end
end
