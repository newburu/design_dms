class DesignsController < InheritedResources::Base

  before_action :check_login, only: [:index]
  before_action :check_open_type

  def index
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
    con = con.merge(params[:q].to_unsafe_h) if params[:q].present?
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

  def download_design_img
    @design = Design.find(params[:id])
    @design.download_countup unless @design.user_eq?(current_user)
    filepath = @design.design_img.url
    stat = open(filepath)
    send_data(stat.read, :filename => @design.design_img_identifier, :length => stat.size)
  end

  def download_pattern_img
    @design = Design.find(params[:id])
    @design.download_countup unless @design.user_eq?(current_user)
    filepath = @design.pattern_img.url
    stat = open(filepath)
    send_data(stat.read, :filename => @design.pattern_img_identifier, :length => stat.size)
  end

  def download_finished_img
    @design = Design.find(params[:id])
    @design.download_countup unless @design.user_eq?(current_user)
    filepath = @design.finished_img.url
    stat = open(filepath)
    send_data(stat.read, :filename => @design.finished_img_identifier, :length => stat.size)
  end

private

  def design_params
    ret = params.require(:design).permit(:name, :genre_id, :collar_type_id, :sleeve_type_id, :cuff_type_id, :swimsuit_type_id, :tops_type_id, :skirt_type_id, :size_id, :sex_id, :open_type_id, :memo, :design_img, :pattern_img, :finished_img, :view_point, :download_poin)
    ret[:user] = current_user
    ret
  end

  def check_login
    # ログインしていなければ、サイト説明ページに移動
    redirect_to root_url and return unless current_user.present?
  end

  def check_open_type
    # 公開範囲に一致しなければ、ポータルページに移動
    if params[:id].present?
      begin
        @design = Design.find(params[:id])
        redirect_to root_url and return unless @design.can_view?(current_user)
      rescue ActiveRecord::RecordNotFound => e
        redirect_to root_url and return
      rescue StandardError => e
        redirect_to root_url and return
      end
    end
  end

end
