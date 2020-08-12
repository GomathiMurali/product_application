class ProductTablesController < ApplicationController
  before_action :set_product_table, only: [:show, :edit, :update, :destroy]

  # GET /product_tables
  # GET /product_tables.json
  def index
    @product_tables = ProductTable.all
  end

  # GET /product_tables/1
  # GET /product_tables/1.json
  def show
  end

  # GET /product_tables/new
  def new
    @product_table = ProductTable.new
  end

  # GET /product_tables/1/edit
  def edit
  end

  # POST /product_tables
  # POST /product_tables.json
  def create
    @product_table = ProductTable.new(product_table_params)

    respond_to do |format|
      if @product_table.save
        format.html { redirect_to @product_table, notice: 'Product table was successfully created.' }
        format.json { render :show, status: :created, location: @product_table }
      else
        format.html { render :new }
        format.json { render json: @product_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_tables/1
  # PATCH/PUT /product_tables/1.json
  def update
    respond_to do |format|
      if @product_table.update(product_table_params)
        format.html { redirect_to @product_table, notice: 'Product table was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_table }
      else
        format.html { render :edit }
        format.json { render json: @product_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_tables/1
  # DELETE /product_tables/1.json
  def destroy
    @product_table.destroy
    respond_to do |format|
      format.html { redirect_to product_tables_url, notice: 'Product table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_table
      @product_table = ProductTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_table_params
      params.require(:product_table).permit(:title, :description, :image_url, :price)
    end
end
