class BsimmController < ApplicationController
  layout proc { |controller| request.xhr? ? false : "application" }

  def practice
    @practice = Practice.find(params[:id])
  end
end
