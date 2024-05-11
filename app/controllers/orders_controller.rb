class OrdersController < ApplicationController

  before_action :set_ticket, only: [:new, :create]
  before_action :set_user, only: [:new, :create]
  before_action :set_event, only: [:new, :create]
  before_action :authenticate_user!, only: [:create, :index]

  def index
    @orders = Order.where(user: current_user)
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = @user
    @order.event_id = @event.id
    @order.ticket_id = @ticket.id
    if @order.save
      redirect_to orders_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to user_path(@order.user), status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = current_user
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_ticket
    @ticket = Ticket.find(params[:ticket_id])
  end

  def order_params
    params.require(:order).permit(:pay_method)
  end

end
