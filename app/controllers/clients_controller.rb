class ClientsController < ApplicationController
  def index
   @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
    if @client.save
      redirect_to new_client_path, notice: 'Success'
    else
      redirect_to :back, notice: 'There was a problem'
    end
  end

  private
    def client_params
      params.require(:client).permit(:name)
    end
end
