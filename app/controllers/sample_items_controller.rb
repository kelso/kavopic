class SampleItemsController < ApplicationController
  before_action :set_sample_item, only: [:show, :edit, :update, :destroy]

  # GET /sample_items
  # GET /sample_items.json
  def index
    @sample_items = SampleItem.all
  end

  # GET /sample_items/1
  # GET /sample_items/1.json
  def show
  end

  # GET /sample_items/new
  def new
    @sample_item = SampleItem.new
  end

  # GET /sample_items/1/edit
  def edit
  end

  # POST /sample_items
  # POST /sample_items.json
  def create
    @sample_item = SampleItem.new(sample_item_params)

    respond_to do |format|
      if @sample_item.save
        format.html { redirect_to @sample_item, notice: 'Sample item was successfully created.' }
        format.json { render :show, status: :created, location: @sample_item }
      else
        format.html { render :new }
        format.json { render json: @sample_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_items/1
  # PATCH/PUT /sample_items/1.json
  def update
    respond_to do |format|
      if @sample_item.update(sample_item_params)
        format.html { redirect_to @sample_item, notice: 'Sample item was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_item }
      else
        format.html { render :edit }
        format.json { render json: @sample_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_items/1
  # DELETE /sample_items/1.json
  def destroy
    @sample_item.destroy
    respond_to do |format|
      format.html { redirect_to sample_items_url, notice: 'Sample item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_item
      @sample_item = SampleItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_item_params
      params.require(:sample_item).permit(:name, :enabled)
    end
end
