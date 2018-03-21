class DesignsController < InheritedResources::Base

  private

    def design_params
      params.require(:design).permit(:name, :genre_id, :collar_type_id, :sleeve_type_id, :cuff_type_id, :swimsuit_type_id, :tops_type_id, :skirt_type_id, :size_id, :sex_id, :memo, :design_img, :pattern_img, :finished_img, :view_point, :download_point)
    end
end

