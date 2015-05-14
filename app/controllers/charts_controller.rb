class ChartsController < ApplicationController

  def index    
  end

  def data
    data = File.read("#{Rails.root}/app/views/charts/data.json")
    render json: data
  end
end