class BillsController < ApplicationController
  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.create(bill_params)
    if @bill.save
      redirect_to new_bill_path, notice: 'Contrata creada exitosamente!'
    else
      redirect_to :back, notice: 'Hubo un problema!'
    end
  end

  private
    def bill_params
      params.require(:bill).permit(:amount, :client_id, :given_at)
    end
end
