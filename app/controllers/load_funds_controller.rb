class LoadFundsController < ApplicationController
  before_action :set_load_fund, only: [:show, :edit, :update, :destroy]

  # GET /load_funds
  # GET /load_funds.json
  def index
    @load_funds = LoadFund.all
  end

  # GET /load_funds/1
  # GET /load_funds/1.json
  def show
  end

  # GET /load_funds/new
  def new
    @load_fund = LoadFund.new
  end

  # GET /load_funds/1/edit
  def edit
  end

  # POST /load_funds
  # POST /load_funds.json
  def create
    @load_fund = LoadFund.new(load_fund_params)

    respond_to do |format|
      if @load_fund.save
        format.html { redirect_to @load_fund, notice: 'Load fund was successfully created.' }
        format.json { render action: 'show', status: :created, location: @load_fund }
      else
        format.html { render action: 'new' }
        format.json { render json: @load_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /load_funds/1
  # PATCH/PUT /load_funds/1.json
  def update
    respond_to do |format|
      if @load_fund.update(load_fund_params)
        format.html { redirect_to @load_fund, notice: 'Load fund was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @load_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /load_funds/1
  # DELETE /load_funds/1.json
  def destroy
    @load_fund.destroy
    respond_to do |format|
      format.html { redirect_to load_funds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load_fund
      @load_fund = LoadFund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def load_fund_params
      params[:load_fund]
    end
end
