class EnginesController < ApplicationController
    def index
        #TODO get all enignes from database
        render component: 'Engines'
    end

    def show
        #TODO get one enigne from database
        render component: 'Engine'
    end
end
