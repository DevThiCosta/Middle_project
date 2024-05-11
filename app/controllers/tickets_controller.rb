class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
    render :index
  end

  def show
    @ticket = Ticket.find(params[:id])
    render :show
  end

  def new
    @tickets = Ticket.new
    render :new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = @user
    if @ticket.save
      redirect_to user_path(@user)
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

  def ticket_params
    params.require(:ticket).permit(:price, :category, :sector)
  end

end
