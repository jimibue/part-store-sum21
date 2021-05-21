class PartsController < ApplicationController
    def index
      render component: 'Parts'
    end

    def show
        render component: 'Part'
    end

    def new
        render component: 'PartNew'
    end

    def edit
        render component: 'PartEdit'
    end
end
