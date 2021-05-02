class TrainersController < ApplicationController
    def new
        @trainer = Trainer.new
    end

    def create 
        @trainer = Trainer.new(trainer_params)

        if @trainer.valid?
            @trainer.save
            redirect_to trainer_path(@trainer)
        else
            render :new
        end
    end

    private

    def trainer_params
        params.require(:trainer).permit(:name, :age)
    end

end
