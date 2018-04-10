class TopsTypesController < InheritedResources::Base

  def index
    @q = TopsType.ransack(params[:q])
    @tops_types = @q.result
    @tops_types = @tops_types.page(params[:page])

    render layout: 'dialog' if params[:mode] == 'dialog'
  end

  private

    def tops_type_params
      params.require(:tops_type).permit(:name)
    end
end

