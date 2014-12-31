class InstalmentsController < ApplicationController

  def index
    @instalments =
    if params[:filter]
      Instalment.
        where("date = ?", params[:filter].to_date).
        order('date')
    else
      Instalment.
        where("date = ?", Date.today)
    end
  end

  def new
    @instalment = Instalment.new
  end

  def create
    @instalment = Instalment.create(instalment_params)
    if @instalment.save
      redirect_to root_path, notice: 'Success'
    else
      redirect_to :back, notice: 'There was a problem'
    end
  end

  def get_bills
    @client = Client.find params[:client_id]
    @bills = @client.bills
  end

  private
    def instalment_params
      params.require(:instalment).permit(:amount, :client_id, :bill_id, :date)
    end
end
