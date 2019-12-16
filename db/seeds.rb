# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PokemonTrainer.destroy_all
Pokemon.destroy_all
Trainer.destroy_all

pikachu = Pokemon.create(name:"Pikachu")
onix = Pokemon.create(name:"Onix")
psyduck = Pokemon.create(name:"Psyduck")

ash = Trainer.create(name:"Ash")
brock = Trainer.create(name:"Brock")
misty = Trainer.create(name:"Misty")

PokemonTrainer.create(pokemon:pikachu, trainer:ash)
PokemonTrainer.create(pokemon:onix, trainer:brock)
PokemonTrainer.create(pokemon:psyduck, trainer:misty)