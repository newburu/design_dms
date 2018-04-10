class CuffTypesController < InheritedResources::Base

  def index
    @q = CuffType.ransack(params[:q])
    @cuff_types = @q.result
    @cuff_types = @cuff_types.page(params[:page])

    render layout: 'dialog' if params[:mode] == 'dialog'
  end

  private

    def cuff_type_params
      params.require(:cuff_type).permit(:name)
    end
end

