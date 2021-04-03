class ApplicationController < ActionController::Base
    def current_user
        @trainer = Trainer.first
    end
end
