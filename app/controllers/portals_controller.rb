class PortalsController < ApplicationController
  
  def index
    @new_designs = Design.all.order(created_at: "DESC").limit(Settings.system[:portal][:limit])
    @ranking_designs = Design.all.order(view_point: "DESC").limit(Settings.system[:portal][:limit])
  end
  
end
