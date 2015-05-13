class CocosController < ApplicationController
  before_action :set_coco, only: [:show, :edit, :update, :destroy]

  # GET /cocos
  # GET /cocos.json
  def index
    @cocos = Coco.all
  end

  # GET /cocos/1
  # GET /cocos/1.json
  def show
  end

  # GET /cocos/new
  def new
    @coco = Coco.new
    @coco.todos.build
  end

  # GET /cocos/1/edit
  def edit
  end

  # POST /cocos
  # POST /cocos.json
  def create
    @coco = Coco.new(coco_params)

    respond_to do |format|
      if @coco.save
        format.html { redirect_to @coco, notice: 'Coco was successfully created.' }
        format.json { render :show, status: :created, location: @coco }
      else
        format.html { render :new }
        format.json { render json: @coco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cocos/1
  # PATCH/PUT /cocos/1.json
  def update
    respond_to do |format|
      if @coco.update(coco_params)
        format.html { redirect_to @coco, notice: 'Coco was successfully updated.' }
        format.json { render :show, status: :ok, location: @coco }
      else
        format.html { render :edit }
        format.json { render json: @coco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocos/1
  # DELETE /cocos/1.json
  def destroy
    @coco.destroy
    respond_to do |format|
      format.html { redirect_to cocos_url, notice: 'Coco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coco
      @coco = Coco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coco_params
      params.require(:coco).permit(:name, :description,todos_attributes:[:id,:description,:done,:_destroy])
    end
end
