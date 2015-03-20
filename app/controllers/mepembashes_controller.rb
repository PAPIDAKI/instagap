class MepembashesController < ApplicationController
  before_action :set_mepembash, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mepembashes = Mepembash.all.order(:farmako_id)
    respond_with(@mepembashes)
  end

  def import
		Mepembash.import(params[:file])

		redirect_to mepembashes_url,notice:"Epembashes imported successfully !"
  end

  def show
    respond_with(@mepembash)
  end

  def new
    @mepembash = Mepembash.new
    respond_with(@mepembash)
  end

  def edit
  end

  def create
    @mepembash = Mepembash.new(mepembash_params)
    @mepembash.save
    respond_with(@mepembash)
  end

  def update
    @mepembash.update(mepembash_params)
    respond_with(@mepembash)
  end

  def destroy
    @mepembash.destroy
    respond_with(@mepembash)
  end

  private
    def set_mepembash
      @mepembash = Mepembash.find(params[:id])
    end

    def mepembash_params
      params.require(:mepembash).permit(:kod_farmak, :code_fyta, :diast_pros, :comments, :delrec)
    end
end
