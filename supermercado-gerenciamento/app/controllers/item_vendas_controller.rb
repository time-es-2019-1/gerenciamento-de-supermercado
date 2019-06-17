class ItemVendasController < ApplicationController
  before_action :set_item_venda, only: [:show, :edit, :update, :destroy]

  # GET /item_vendas
  # GET /item_vendas.json
  def index
    @item_vendas = ItemVenda.all
    @produtos = Produto.all
  end

  # GET /item_vendas/1
  # GET /item_vendas/1.json
  def show
  end

  # GET /item_vendas/new
  def new
    @item_venda = ItemVenda.new
  end

  # GET /item_vendas/1/edit
  def edit
  end

  # POST /item_vendas
  # POST /item_vendas.json
  def create
    #@item_venda = ItemVenda.new(item_venda_params)
    @venda = Venda.order("created_at").last
    @item_venda = @venda.item_vendas.create(item_venda_params)
    @venda.valor_total += @item_venda.produto.preco_venda * @item_venda.quantidade
    @item_venda.venda_id = @venda.id
    @venda.save
    respond_to do |format|
      if @item_venda.save
        format.html {redirect_to new_item_venda_path}
        #format.html { redirect_to @item_venda, notice: 'Item venda was successfully created.' }
        format.json { render :show, status: :created, location: @item_venda }
      else
        format.html { render :new }
        format.json { render json: @item_venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_vendas/1
  # PATCH/PUT /item_vendas/1.json
  def update
    respond_to do |format|
      if @item_venda.update(item_venda_params)
        format.html { redirect_to @item_venda, notice: 'Item venda was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_venda }
      else
        format.html { render :edit }
        format.json { render json: @item_venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_vendas/1
  # DELETE /item_vendas/1.json
  def destroy
    @item_venda.destroy
    respond_to do |format|
      format.html { redirect_to item_vendas_url, notice: 'Item venda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_venda
      @item_venda = ItemVenda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_venda_params
      params.require(:item_venda).permit(:produto_id, :venda_id, :quantidade)
    end
end
