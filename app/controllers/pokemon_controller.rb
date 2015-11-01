class PokemonController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    pokemon.save
    if pokemon.health <= 0
      pokemon.destroy
    end
    redirect_to trainer_path(pokemon.trainer)
  end

  def create
    @pokemon = Pokemon.new
	  Pokemon.create pokemon_params
		@pokemon.health = 100
    @pokemon.level = 1
		@pokemon.trainer = current_trainer
    @pokemon.trainer_id = current_trainer.id
		if @pokemon.save
		  redirect_to trainer_path(current_trainer)
		else
	      flash[:error] = @pokemon.errors.full_messages.to_sentence
        redirect_to new_pokemon_path
	  end
	end

  def heal
    pokemon = Pokemon.find(params[:id])
    pokemon.health += 10
    pokemon.save
    redirect_to pokemon.trainer
  end

  def new
    #@pokemon = Pokemon.create(params.require(:pokemon).permit(:name))
    #redirect_to trainer_path(current_trainer)
    @pokemon = Pokemon.new

  end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
