class PartiesController < ApplicationController
    def new
        @party = Party.new
    end

    def create
        @party = Party.new(party_params)
        #binding.pry
        @party.save
        redirect_to party_path(@party)
    end

    def show
        @party = Party.find_by(params[:id])
        pokemon_id = @party.pokemon_id
        pokemon2_id = @party.pokemon2_id
        pokemon3_id = @party.pokemon3_id
        pokemon4_id = @party.pokemon4_id
        pokemon5_id = @party.pokemon5_id
        pokemon6_id = @party.pokemon6_id
        #binding.pry
        @pokemon1 = Pokemon.find(pokemon_id)
        @pokemon2 = Pokemon.find(pokemon2_id)
        @pokemon3 = Pokemon.find(pokemon3_id)
        @pokemon4 = Pokemon.find(pokemon4_id)
        @pokemon5 = Pokemon.find(pokemon5_id)
        @pokemon6 = Pokemon.find(pokemon6_id)
    end

    def index
        @parties = Party.all
    end

    def edit
        @party = Party.find(params[:id])
    end

    def update
        @party = Party.find(params[:id])
        @party.update(name: params[:party][:name], pokemon_id: params[:party][:pokemon_id], pokemon2_id: params[:party][:pokemon2_id], pokemon3_id: params[:party][:pokemon3_id], pokemon4_id: params[:party][:pokemon4_id], pokemon5_id: params[:party][:pokemon5_id], pokemon6_id: params[:party][:pokemon6_id])
        redirect_to party_path(@party)
    end

    private

    def party_params
        params.require(:party).permit!
    end
end
