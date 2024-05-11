class OrdersController < ApplicationController

  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :create, :edit, :update]
  before_action :set_event, only: [:new, :create, :edit, :update]
  before_action :authenticate_user!

  def index
    @orders = Order.all
    render :index
  end

  def show
    @order = Order.find(params[:id])
    render :show
  end

  def new
    @order = Order.new
    render :new
  end

  def create
    @order = Order.new(ticket_params)
    @order.user = @user
    @order.event = @event
    @order.ticket = @tickect
    if @order.save
      redirect_to event_path(@event)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def edit
    @order = Order.find(params[:id])
    render :edit
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to order_path(@order)
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
    @event = Event.find(params[:event_id])
  end

  def order_params
    params.require(:ticket).permit(:price, :category, :sector)
  end

end
