class CreditRequestsController < ApplicationController
    before_action :set_requester

    def create
        @credit_request = @requester.credit_requests.create(credit_request_params)
        redirect_to @requester
    end

    def destroy
        @credit_request = @requester.credit_request.find(params[:id])
        if @credit_reques.destroy
            flash[:success] = "Credit Request was deleted."
        else
            flash[:erro] = "Credit Request could not be deleted"
        end
        redirect_to @requester
    end

    private
    
    def set_requester
        @requester = Requester.find(params[:requester_id])
    end

    def credit_request_params
        params[:credit_request].permit(:value)
    end
end
