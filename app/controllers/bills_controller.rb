class BillsController < ApplicationController
  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.create(bill_params)
    if @bill.save
      redirect_to new_bill_path, notice: 'Success'
    else
      redirect_to :back, notice: 'There was a problem'
    end
  end

  private
    def bill_params
      params.require(:bill).permit(:amount, :client_id)
    end
end
