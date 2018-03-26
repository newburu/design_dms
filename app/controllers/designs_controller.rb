class DesignsController < InheritedResources::Base

  def index
    @q = Design.ransack(params[:q])
    @designs = @q.result
    @genres = Genre.all
    @collar_types = CollarType.all
    @sleeve_types = SleeveType.all
    @cuff_types = CuffType.all
    @swimsuit_types = SwimsuitType.all
    @tops_types = TopsType.all
    @skirt_types = SkirtType.all
    @sizes = Size.all
    @sexs = Sex.all
  end

  private

    def design_params
      ret = params.require(:design).permit(:name, :genre_id, :collar_type_id, :sleeve_type_id, :cuff_type_id, :swimsuit_type_id, :tops_type_id, :skirt_type_id, :size_id, :sex_id, :memo, :design_img, :pattern_img, :finished_img, :view_point, :download_poin)
      ret[:user] = current_user
      ret
    end
end

