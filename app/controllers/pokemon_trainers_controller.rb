class PokemonTrainersController < ApplicationController
    def index
        pokemon_trainers = PokemonTrainer.all
        render json: pokemon_trainers
    end

    def show
        pokemon_trainer = PokemonTrainer.find(params[:id])
        render json: pokemon_trainer
    end

    # Pokemon.create(name:params[:name])

    def create
        PokemonTrainer.create(
            pokemon:Pokemon.find_by(name:params[:pokemon]),
            trainer:Trainer.find_by(name:params[:trainer])
        )
        render json: {message: "Connected Pokemon and Trainer"}
    end

    def destroy
        pokemon_trainer = PokemonTrainer.find(params[:id])
        pokemon_trainer.destroy
        render json: {message: "Removed partners"}
    end
end
