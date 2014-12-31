class InstalmentsController < ApplicationController

  def index
    @instalments =
    if params[:filter]
      Instalment.
        where("created_at >= ? AND created_at <= ?", params[:filter].to_date.beginning_of_day,
          params[:filter].to_date.end_of_day)
    else
      Instalment.
        where("created_at >= ? AND created_at <= ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
    end
  end

  def new
    @instalment = Instalment.new
  end

  def create
    @instalment = Instalment.create(instalment_params)
    if @instalment.save
      redirect_to root_path, notice: 'Abono creado exitosamente!'
    else
      redirect_to :back, notice: 'Hubo un error!'
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
