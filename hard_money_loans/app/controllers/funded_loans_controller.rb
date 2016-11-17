class FundedLoansController < ApplicationController
  before_action :set_funded_loan, only: [:show, :edit, :update, :destroy]

  # GET /funded_loans
  # GET /funded_loans.json
  def index
    @funded_loans = FundedLoan.all
  end

  # GET /funded_loans/1
  # GET /funded_loans/1.json
  def show
  end

  # GET /funded_loans/new
  def new
    @funded_loan = FundedLoan.new
  end

  # GET /funded_loans/1/edit
  def edit
  end

  # POST /funded_loans
  # POST /funded_loans.json
  def create
    @funded_loan = FundedLoan.new(funded_loan_params)

    respond_to do |format|
      if @funded_loan.save
        format.html { redirect_to @funded_loan, notice: 'Funded loan was successfully created.' }
        format.json { render :show, status: :created, location: @funded_loan }
      else
        format.html { render :new }
        format.json { render json: @funded_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funded_loans/1
  # PATCH/PUT /funded_loans/1.json
  def update
    respond_to do |format|
      if @funded_loan.update(funded_loan_params)
        format.html { redirect_to @funded_loan, notice: 'Funded loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @funded_loan }
      else
        format.html { render :edit }
        format.json { render json: @funded_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funded_loans/1
  # DELETE /funded_loans/1.json
  def destroy
    @funded_loan.destroy
    respond_to do |format|
      format.html { redirect_to funded_loans_url, notice: 'Funded loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funded_loan
      @funded_loan = FundedLoan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funded_loan_params
      params.require(:funded_loan).permit(:title.string, :loan_amount.string, :purpose.string, :loan_position.string, :term.string, :property_type.text, :term.string, :loan_to_cost.string)
    end
end
