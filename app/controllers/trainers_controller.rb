class TrainersController < ApplicationController
    def index
        trainers = Trainer.all
        render json: trainers
    end

    def show
        trainer = Trainer.find(params[:id])
        render json: trainer
    end

    def create
        Trainer.create(name:params[:name])
        render json: {message:"Added Trainer"}
    end

    def destroy
        trainer = Trainer.find(params[:id])
        trainer.destroy
        render json: {message: "Removed Trainer"}
    end
end
