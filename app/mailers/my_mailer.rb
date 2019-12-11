class MyMailer < ApplicationMailer
    default from: 'bishalmukherjee7@gmail.com'
    def test_mail
        @students = Student.all
        mail(to: 'my@example.com', subject: 'Testing Mailer')
    end

end
