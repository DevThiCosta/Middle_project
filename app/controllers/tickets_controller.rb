class TicketsController < ApplicationController

  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :create, :edit, :update]
  before_action :set_event, only: [:new, :create, :edit, :update]
  before_action :authenticate_user!

  def index
    @tickets = Ticket.all
    render :index
  end

  def show
    @ticket = Ticket.find(params[:id])
    render :show
  end

  def new
    @ticket = Ticket.new
    render :new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = @user
    @ticket.event = @event
    if @ticket.save
      redirect_to event_path(@event)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def edit
    @ticket = Ticket.find(params[:id])
    render :edit
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(ticket_params)
    redirect_to ticket_path(@ticket)
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to user_path(@ticket.user), status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = current_user
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def ticket_params
    params.require(:ticket).permit(:price, :category, :sector)
  end

end
