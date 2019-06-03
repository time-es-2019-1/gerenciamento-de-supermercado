class ItemEstoquesController < ApplicationController
  before_action :set_item_estoque, only: [:show, :edit, :update, :destroy]

  # GET /item_estoques
  # GET /item_estoques.json
  def index
    @item_estoques = ItemEstoque.all
  end

  # GET /item_estoques/1
  # GET /item_estoques/1.json
  def show
  end

  # GET /item_estoques/new
  def new
    @item_estoque = ItemEstoque.new
  end

  # GET /item_estoques/1/edit
  def edit
  end

  # POST /item_estoques
  # POST /item_estoques.json
  def create
    @item_estoque = ItemEstoque.new(item_estoque_params)

    respond_to do |format|
      if @item_estoque.save
        format.html { redirect_to @item_estoque, notice: 'Item estoque was successfully created.' }
        format.json { render :show, status: :created, location: @item_estoque }
      else
        format.html { render :new }
        format.json { render json: @item_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_estoques/1
  # PATCH/PUT /item_estoques/1.json
  def update
    respond_to do |format|
      if @item_estoque.update(item_estoque_params)
        format.html { redirect_to @item_estoque, notice: 'Item estoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_estoque }
      else
        format.html { render :edit }
        format.json { render json: @item_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_estoques/1
  # DELETE /item_estoques/1.json
  def destroy
    @item_estoque.destroy
    respond_to do |format|
      format.html { redirect_to item_estoques_url, notice: 'Item estoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_estoque
      @item_estoque = ItemEstoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_estoque_params
      params.require(:item_estoque).permit(:produto_id, :quantidade)
    end
end
