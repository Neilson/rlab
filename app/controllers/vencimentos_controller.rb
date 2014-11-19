class VencimentosController < ApplicationController
	def index
		@vencimentos = Vencimento.all
		#render plain: @vencimentos.inspect 
	end

	def create
		#render plain: params[:cliente].inspect 
		@vencimento = Vencimento.new( vencimento_params )
		if @vencimento.save
			redirect_to @vencimento
		else
			render 'new'
		end
		
	end

	def show 
		@vencimento = Vencimento.find(params[:id])
	end

	def edit 
		@vencimento = Vencimento.find(params[:id])
	end

	def update
		@vencimento = Vencimento.find(params[:id])

		if @vencimento.update(vencimento_params)
			redirect_to @vencimento
		else
			render 'edit'
		end
	end

	private
	def vencimento_params
		params.require(:vencimento).permit(:valor, :dia, :cliente_id)
	end
end
