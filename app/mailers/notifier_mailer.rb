class NotifierMailer < ApplicationMailer
  default :from => "AppMall <ec.app.mail@gmail.com>"

      def welcome(user)
          @user = user
          mail :to => @user.email, :subject => "We've received your order"
      end

    def new_message(message)
        @message = message

        mail to: @message.user_receiver.email,
            subject: "[You have new message in AppMail]"
    end

    def read_message(message)
        @message = message
        mail to: @message.user_sender.email,
            subject: "[ Inform read message in AppMail]"
    end

end
