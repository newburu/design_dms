class SwimsuitTypesController < InheritedResources::Base

  def index
    @q = SwimsuitType.ransack(params[:q])
    @swimsuit_types = @q.result
    @swimsuit_types = @swimsuit_types.page(params[:page])

    render layout: 'dialog' if params[:mode] == 'dialog'
  end

  private

    def swimsuit_type_params
      params.require(:swimsuit_type).permit(:name)
    end
end

