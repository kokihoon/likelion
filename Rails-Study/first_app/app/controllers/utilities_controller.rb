class UtilitiesController < ApplicationController
  def index
  end

  def pick_lucky_numbers
    # 45개의 숫자 중에서 6개를 뽑는다.
    # numbers = (1..45).to_a
    # random_numbers = numbers.sample 6
    # @lucky_numbers = random_numbers.sort
    @lucky_numbers = (1..45).to_a.sample(6).sort
  end

  def get_stock_info
  end

  def show_stock_info
    @stocks = StockQuote::Stock.quote([params[:company_code1],params[:company_code2],params[:company_code3]])
  end
end
