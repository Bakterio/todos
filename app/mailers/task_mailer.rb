class TaskMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.task_mailer.task_created.subject
  #
  def task_created
    @email = params[:user].email

    mail to: @email, subject: "New task created"
  end
end
