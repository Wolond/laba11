class PalsController < ApplicationController
  before_action :parse_params, only: :output

  def input; end

  def all
    @res = Pal.all
    render xml: @res.as_json.to_xml
  end

  def output
    @pal = Pal.where(count: @text).first_or_create
    respond_to do |format|
      format.html
    end
  end

  protected

  def parse_params
    @text = params[:count].to_i
  end
end
