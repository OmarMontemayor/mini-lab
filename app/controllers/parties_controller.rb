class PartiesController < ApplicationController
    def new
        @party = Party.new
    end

    def create
        #binding.pry
        @party = Party.new(party_params)
        if @party.save
            redirect_to party_path(@party)
        else
            render :new
        end
    end

    def show
        @party = Party.find(params[:id])
        @pokemon1 = Pokemon.find(@party.pokemon1_id)
        @pokemon2 = Pokemon.find(@party.pokemon2_id)
        @pokemon3 = Pokemon.find(@party.pokemon3_id)
        @pokemon4 = Pokemon.find(@party.pokemon4_id)
        @pokemon5 = Pokemon.find(@party.pokemon5_id)
        @pokemon6 = Pokemon.find(@party.pokemon6_id)
    end

    private

    def party_params
        params.require(:party).permit(
            :name,
            :trainer_id,
            :pokemon1_id,
            :pokemon2_id,
            :pokemon3_id,
            :pokemon4_id,
            :pokemon5_id,
            :pokemon6_id
        )
    end
end
