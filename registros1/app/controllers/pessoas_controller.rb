class PessoasController < ApplicationController

  def index
    @pessoas = Pessoa.order :nome
  end
  def show
    @pessoa = Pessoa.find(params[:id])
  end
  def edit
    @pessoa = Pessoa.find(params[:id])
  end
  def destroy
      @pessoa = Pessoa.find(params[:id])
      @pessoa.destroy
      redirect_to action: 'index'
  end
  def new
    @pessoa = Pessoa.new
  end
  def create
    @pessoa = Pessoa.new(pessoa_params)
    @pessoa.save
    redirect_to(action: "show", id: @pessoa)
  end
  def pessoa_params
    params.require(:pessoa).permit(:nome, :endereco, :idade, :sexo)
  end
  def update
    @pessoa = Pessoa.find params[:id]
    @pessoa.update_attributes(pessoa_params)
    redirect_to action: "show", id: @pessoa
  end
end
