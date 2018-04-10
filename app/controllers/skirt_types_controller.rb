class SkirtTypesController < InheritedResources::Base

  def index
    @q = SkirtType.ransack(params[:q])
    @skirt_types = @q.result
    @skirt_types = @skirt_types.page(params[:page])

    render layout: 'dialog' if params[:mode] == 'dialog'
  end

  private

    def skirt_type_params
      params.require(:skirt_type).permit(:name)
    end
end

