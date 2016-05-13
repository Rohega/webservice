class TokensController < ApplicationController
  before_action :set_token, only: [:show, :update, :destroy]

  # GET /tokens
  # GET /tokens.json
  def index
    @tokens = Token.all

    render json: @tokens
  end

  # GET /tokens/1
  # GET /tokens/1.json
  def show
    render json: @token
  end

  # POST /tokens
  # POST /tokens.json
  def create
    @token = Token.new
    @token.id = SecureRandom.hex[0..7]
    @token.name = token_params.name
    @token.bin = token_params.number[0,6]
    @token.last4 = token_params.number[13,16]

    if @token.save
      render json: @token, status: :created, location: @token
    else
      render json: @token.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tokens/1
  # PATCH/PUT /tokens/1.json
  def update
    @token = Token.find(params[:id])

    if @token.update(token_params)
      head :no_content
    else
      render json: @token.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tokens/1
  # DELETE /tokens/1.json
  def destroy
    @token.destroy

    head :no_content
  end

  private

    def set_token
      @token = Token.find(params[:id])
    end

    def token_params
      params.require(:token).permit(:id, :name, :exp_month, :exp_year, :cvc, :number)
    end
end
