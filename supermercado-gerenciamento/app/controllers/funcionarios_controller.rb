class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy]


  # GET /clientes
  # GET /clientes.json
  def index

    @funcionario =Funcionario.all

  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
    @funcionarios = Funcionario.all
    @enderecos = Endereco.all
  end

  # GET /clientes/new
  def new

    @funcionario = Funcionario.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @funcionario = Funcionario.new(funcionario_params)

    @funcionario.discriminador ="Funcionario"

    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to @funcionario, notice: 'Funcionario was successfully created.' }
        format.json { render :show, status: :created, location: @funcionario }
      else
        format.html { render :new }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @funcionario.update(funcionario_params)
        format.html { redirect_to @funcionario, notice: 'Funcionario was successfully updated.' }
        format.json { render :show, status: :ok, location: @funcionario }
      else
        format.html { render :edit }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to funcionarios_url, notice: 'Funcionario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  def set_funcionario
    @funcionario = Funcionario.find(params[:id])
  end


  # Never trust parameters from the scary internet, only allow the white list through.
  def funcionario_params
    params.require(:funcionario).permit(:nome, :cpf, :dataNascimento, :numTelefone,:salario,:cargo, :dataAdimissao, :dataPagamento,:endereco_id)
  end
  end
