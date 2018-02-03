class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_bsimm_tree

  def set_bsimm_tree
    @domains = Domain.all
  end
end
