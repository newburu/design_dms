class PortalsController < ApplicationController
  
  def index
    # フォロー情報を更新
    current_user.update_friends if current_user.present?
    
    new_designs = Design.all.order(created_at: "DESC")
    ranking_designs = Design.all.order(view_point: "DESC")
    
    @new_designs = []
    new_designs.each do |design|
      @new_designs << design if design.can_view?(current_user)
      break if @new_designs.size >= Settings.system[:portal][:limit]
    end
    
    @ranking_designs = []
    ranking_designs.each do |design|
      @ranking_designs << design if design.can_view?(current_user)
      break if @ranking_designs.size >= Settings.system[:portal][:limit]
    end

  end
  
end
