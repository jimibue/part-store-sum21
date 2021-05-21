class PartsController < ApplicationController
    before_action :set_engine
    before_action :set_part, only: [:show, :update, :edit, :destroy]
    
    def index
      # we need to find engine and then return parts  
      render component: 'Parts', props: {parts: @engine.parts, engine: @engine}
    end

    def show
        render component: 'Part', props: {part: @part, engine: @engine}
    end

    def new
        render component: 'PartNew', props: { engine: @engine}
    end

    def create
      part = @engine.parts.new(part_params)
      if(part.save)
        redirect_to engine_parts_path(@engine.id)
      else
        puts part.errors.full_messages
        # deal with later
      end
    end

    def edit
        render component: 'PartEdit', props: {part: @part, engine: @engine}
    end

    def update
        if(@part.update(part_params))
          redirect_to engine_parts_path(@engine.id)
        else
          # deal with later
        end
      end

    def destroy
       @part.destroy
       redirect_to engine_parts_path(@engine.id)
    end

    private

    def part_params
      params.require(:part).permit(:name, :quantity, :in_stock, :price)
    end

    def set_engine
        @engine = Engine.find(params[:engine_id])
    end

    def set_part
       @part = @engine.parts.find(params[:id]) 
    end
end
