class AccountsController < ApplicationController
	def index
		@accounts  = Account.all
		@accounts = Customer.all
	end

	def show
		@account = Account.find(params[:id])
		
	end
end
