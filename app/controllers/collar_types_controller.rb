class CollarTypesController < InheritedResources::Base

  def index
    @q = CollarType.ransack(params[:q])
    @collar_types = @q.result
    @collar_types = @collar_types.page(params[:page])

    render layout: 'dialog' if params[:mode] == 'dialog'
  end

  private

    def collar_type_params
      params.require(:collar_type).permit(:name)
    end
end

