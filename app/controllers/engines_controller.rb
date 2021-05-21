class EnginesController < ApplicationController
  
    def index
        engines = Engine.all
        render component: 'Engines', props: {engines: engines}
    end

    def show
        #TODO get one enigne from database
        render component: 'Engine'
    end


end
