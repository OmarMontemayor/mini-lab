class PartiesController < ApplicationController
    def new
        @party = Party.new
    end

    def create
        @party = Party.new(party_params)
        if @party.save
            redirect_to party_path(@party)
        else
            render :new
        end
    end

    def show
        @party = Party.find(params[:id])
    end

    def index
        @parties = Party.all
    end

    def edit
        @party = Party.find(params[:id])
    end

    def update
        @party = Party.find(params[:id])

        if @party.update(party_params)
            redirect_to parties_path
        else
            render :edit
        end
    end

    def destroy
        @party = Party.find(params[:id])
        @party.destroy
        redirect_to parties_path
    end

    private

    def party_params
        params.require(:party).permit(
            :name,
            :trainer_id,
            pokemon_ids:[]
        )
    end
end
