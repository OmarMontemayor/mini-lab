class PartiesController < ApplicationController
    def new
        @party = Party.new
    end

    def create
        @party = Party.create(party_params)
        redirect_to party_path(@party)
    end

    private

    def party_params
        params.require(:party).permit(
            :name,
            :trainer_id,
            :pokemon1_id
        )
    end

end
