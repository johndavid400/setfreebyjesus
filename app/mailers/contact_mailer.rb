class ContactMailer < ActionMailer::Base
  default from: "admin@setfreebyjesus.com"

  def submit_contact(params)
    @email = params[:email]
    @name = params[:name] if params[:name].present?
    @subject = params[:subject] if params[:subject].present?
    @message = params[:message] if params[:message].present?
    mail(:to => Admin.pluck(:email), :subject => "SetFreeByJesus.com: #{@subject}")
  end

end
