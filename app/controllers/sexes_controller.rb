class SexesController < InheritedResources::Base

  private

    def sex_params
      params.require(:sex).permit(:name)
    end
end

