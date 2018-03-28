class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_bsimm_tree, :revision

  def set_bsimm_tree
    @domains = Domain.all
  end

  def revision
    @revision = File.read(Rails.root + 'REVISION')
  rescue StandardError
    @revision = "unknown"
  end
end
