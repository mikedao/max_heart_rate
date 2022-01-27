class HrController < ApplicationController

  def new
  end

  def show
    @result = Result.new(params[:age].to_i)
  end
end