class VQuotesController < ApplicationController
  before_action :set_v_quote, only: %i[ show edit update destroy ]

  # GET /v_quotes or /v_quotes.json
  def index
    @v_quotes = VQuote.all
  end

  # GET /v_quotes/1 or /v_quotes/1.json
  def show
  end

  # GET /v_quotes/new
  def new
    @v_quote = VQuote.new
  end

  # GET /v_quotes/1/edit
  def edit
  end

  # POST /v_quotes or /v_quotes.json
  def create
    @v_quote = VQuote.new(v_quote_params)

    respond_to do |format|
      if @v_quote.save
        format.html { redirect_to v_quote_url(@v_quote), notice: "V quote was successfully created." }
        format.json { render :show, status: :created, location: @v_quote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @v_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_quotes/1 or /v_quotes/1.json
  def update
    respond_to do |format|
      if @v_quote.update(v_quote_params)
        format.html { redirect_to v_quote_url(@v_quote), notice: "V quote was successfully updated." }
        format.json { render :show, status: :ok, location: @v_quote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @v_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_quotes/1 or /v_quotes/1.json
  def destroy
    @v_quote.destroy

    respond_to do |format|
      format.html { redirect_to v_quotes_url, notice: "V quote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_quote
      @v_quote = VQuote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def v_quote_params
      params.require(:v_quote).permit(:quote, :authur)
    end
end
