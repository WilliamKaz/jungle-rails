class ReceiptMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_email(order)
    # @user = params[:user]
    # @url  = 'http://example.com/orders/:id'
    @order = order
    mail(to: order.email, subject: 'Your order has been completed')
  end

end