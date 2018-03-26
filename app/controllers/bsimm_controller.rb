class BsimmController < ApplicationController
  layout(proc { request.xhr? ? false : "application" })

  def practice
    @practice = Practice.find(params[:id])
  end
end
