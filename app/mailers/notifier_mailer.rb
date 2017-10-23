class NotifierMailer < ApplicationMailer
  default :from => "AppMall <ec.app.mail@gmail.com>"

      def welcome(user)
          @user = user
          mail :to => @user.email, :subject => "We've received your order"
      end
end
