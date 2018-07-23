class CustomersController < ApplicationController

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			redirect_to customer_path(@customer)
		else
			render 'new'
		end
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])
		if @customer.update
			redirect_to @customer
		else
			render 'edit'
		end
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	private
		def customer_params
			params.require(:customer).permit(:name,:email)
		end
end
