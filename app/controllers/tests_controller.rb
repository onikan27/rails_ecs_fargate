class Api::V1::TestsController < ApplicationController
  def index
    render json: '接続完了！'
  end
end
