class ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new
	end

	def create
		@customer = Customer.find(params[:customer_id])
		@reservation = @customer.reservations.create(reservation_params)
		redirect_to @reservation
	end

	def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_path
	end

	private
		def reservation_params
			params.require(:reservation).permit(:date,:table_num,:num_people,:reserv_code)
		end
end
