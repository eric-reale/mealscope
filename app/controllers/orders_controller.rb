class OrdersController < ApplicationController
  def create
    meal = Meal.find(params[:meal_id])
    authorize meal
    order  = Order.create!(meal: meal, amount: meal.sponsored_posts_price, state: 'pending', user: current_user)
    authorize order

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: meal.name,
        # images: [teddy.photo_url],
        amount: meal.sponsored_posts_price_cents,
        currency: 'usd',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
