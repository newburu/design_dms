class SleeveTypesController < InheritedResources::Base

  def index
    @q = SleeveType.ransack(params[:q])
    @sleeve_types = @q.result
    @sleeve_types = @sleeve_types.page(params[:page])

    render layout: 'dialog' if params[:mode] == 'dialog'
  end

  private

    def sleeve_type_params
      params.require(:sleeve_type).permit(:name)
    end
end

