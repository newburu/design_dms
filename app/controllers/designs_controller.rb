class DesignsController < InheritedResources::Base

  def index
    redirect_to static_pages_info_url unless current_user.present?
    
    # 全体公開ならOK
    con = {
      g: {
        '0' => {
          m: 'or',
          g: {
            '0' => { m: 'and', open_type_id_eq: OpenType::ALL.id },
            '1' => { m: 'and', open_type_id_eq: OpenType::MY_ONLY.id, user_id_eq: current_user.id },
            '2' => { m: 'and', open_type_id_eq: OpenType::FOLLOWER_ONLY.id, user_id_eq: current_user.id }
          }
        },
      }
    }
    con[:g]['1'] = params[:q].to_unsafe_h if params[:q].present?
    @q = Design.ransack(con)
    
    @designs = @q.result
    @designs = @designs.page(params[:page])
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

  def show
    # 参照カウントを増やす(作成者でなければ)
    @design = Design.find(params[:id])
    unless @design.user == current_user
      @design.view_point = @design.view_point + 1
      @design.save!
    end
  end

  def edit
    @design = Design.find(params[:id])
    redirect_to design_path unless @design.user_eq?(current_user)
  end

  def destroy
    @design = Design.find(params[:id])
    if @design.user_eq?(current_user)
      @design.delete
    end
    redirect_to designs_path
  end

  private

    def design_params
      ret = params.require(:design).permit(:name, :genre_id, :collar_type_id, :sleeve_type_id, :cuff_type_id, :swimsuit_type_id, :tops_type_id, :skirt_type_id, :size_id, :sex_id, :open_type_id, :memo, :design_img, :pattern_img, :finished_img, :view_point, :download_poin)
      ret[:user] = current_user
      ret
    end

end

